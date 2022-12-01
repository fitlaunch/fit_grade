import 'package:fit_grade/Examples/Task_Progress/task_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier(tasks: [
    Task(id: 1, label: 'Load rocket with supplies'),
    Task(id: 2, label: 'Launch rocket'),
    Task(id: 3, label: 'Circle the home planet'),
    Task(id: 4, label: 'Head out to the first moon'),
    Task(id: 5, label: 'Launch moon lander #1')
  ]);
});

class Progress extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tasks = ref.watch(tasksProvider);

    var numCompletedTasks = tasks.where((task) {
      return task.completed == true;
    }).length;

    return Column(
      children: [
        const SizedBox(height: 10),
        const Text('You are this far away from exploring the whole universe:'),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: LinearProgressIndicator(
            value: numCompletedTasks / tasks.length,
            minHeight: 10.0,
            color: Colors.green,
            backgroundColor: Colors.grey,
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

//had to bring all of below to this file to get progress indicator to work

class TaskList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tasks = ref.watch(tasksProvider);

    return Column(
      children: tasks
          .map(
            (task) => TaskItem(task: task),
          )
          .toList(),
    );
  }
}

class TaskItem extends ConsumerWidget {
  final Task task;

  TaskItem({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue) =>
              ref.read(tasksProvider.notifier).toggle(task.id),
          value: task.completed,
        ),
        Text(task.label),
      ],
    );
  }
}

@immutable
class Task {
  final int id;
  final String label;
  final bool completed;

  Task({required this.id, required this.label, this.completed = false});

  Task copyWith({int? id, String? label, bool? completed}) {
    return Task(
        id: id ?? this.id,
        label: label ?? this.label,
        completed: completed ?? this.completed);
  }
}
