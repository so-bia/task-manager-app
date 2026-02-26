import '../models/task_model.dart';

class ApiService {
  Future<List<Task>> fetchTasks() async {
    try {
      await Future.delayed(const Duration(milliseconds: 1500));

      return [
        Task(
          id: '1',
          title: 'Complete Flutter Project',
          description: 'Implement CRUD and State Management',
          status: 'pending',
          dueDate: DateTime.now().add(const Duration(days: 1)),
        ),
        Task(
          id: '2',
          title: 'Review Documentation',
          description: 'Ensure README matches the architecture',
          status: 'completed',
          dueDate: DateTime.now(),
        ),
        Task(
          id: '3',
          title: 'Generate APK',
          description: 'Build the release version for submission',
          status: 'pending',
          dueDate: DateTime.now().add(const Duration(days: 2)),
        ),
      ];
    } catch (e) {
      throw Exception('Error connecting to data source: $e');
    }
  }

  Future<void> createTask(Task task) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
