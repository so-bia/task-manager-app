import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../services/api_service.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<Task> get tasks => _tasks;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  // READ - Initial Fetch
  Future<void> refreshTasks() async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      final service = ApiService();
      _tasks = await service.fetchTasks();
    } catch (e) {
      _errorMessage = "Failed to load tasks. Using local storage.";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // CREATE - Add Task
  void addTask(Task task) {
    _tasks.insert(0, task);
    notifyListeners();
  }

  // UPDATE - Toggle Status
  void toggleTaskStatus(String id) {
    final index = _tasks.indexWhere((t) => t.id == id);
    if (index != -1) {
      final t = _tasks[index];
      _tasks[index] = Task(
        id: t.id,
        title: t.title,
        description: t.description,
        status: t.status == 'pending' ? 'completed' : 'pending',
        dueDate: t.dueDate,
      );
      notifyListeners();
    }
  }

  // DELETE - Remove Task
  void deleteTask(String id) {
    _tasks.removeWhere((t) => t.id == id);
    notifyListeners();
  }
}
