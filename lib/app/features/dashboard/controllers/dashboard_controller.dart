<<<<<<< HEAD
=======
// ignore_for_file: prefer_const_constructors

>>>>>>> 74acfd7 (open camera)
part of dashboard;

class DashboardController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

<<<<<<< HEAD
  static var key;
=======
  // static var key;
>>>>>>> 74acfd7 (open camera)

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
<<<<<<< HEAD

  List<TaskCardData> getAllTask() {
    return [
      const TaskCardData(
=======
_Profile getProfil() {
    return const _Profile(
      photo: AssetImage(ImageRasterPath.avatar1),
      name: "Firgia",
      email: "flutterwithgia@gmail.com",
    );
  }
  List<TaskCardData> getAllTask() {
    return [
      TaskCardData(
>>>>>>> 74acfd7 (open camera)
        title: "Daftar Penyakit",
        dueDay: 2,
        totalComments: 50,
        type: TaskType.todo,
        totalContributors: 30,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar1),
          AssetImage(ImageRasterPath.avatar2),
          AssetImage(ImageRasterPath.avatar3),
          AssetImage(ImageRasterPath.avatar4),
        ],
      ),
<<<<<<< HEAD
      const TaskCardData(
=======
      TaskCardData(
>>>>>>> 74acfd7 (open camera)
        title: "Diagnosa",
        dueDay: -1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.inProgress,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5),
          AssetImage(ImageRasterPath.avatar6),
          AssetImage(ImageRasterPath.avatar7),
          AssetImage(ImageRasterPath.avatar8),
        ],
      ),
<<<<<<< HEAD
      const TaskCardData(
=======
      TaskCardData(
>>>>>>> 74acfd7 (open camera)
        title: "Deteksi",
        dueDay: 1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.done,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5),
          AssetImage(ImageRasterPath.avatar3),
          AssetImage(ImageRasterPath.avatar4),
          AssetImage(ImageRasterPath.avatar2),
        ],
      ),
<<<<<<< HEAD
      const TaskCardData(
=======
      TaskCardData(
>>>>>>> 74acfd7 (open camera)
        title: "Temukan Dokter Terdekat",
        dueDay: 2,
        totalComments: 50,
        type: TaskType.todo,
        totalContributors: 30,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar1),
          AssetImage(ImageRasterPath.avatar2),
          AssetImage(ImageRasterPath.avatar3),
          AssetImage(ImageRasterPath.avatar4),
        ],
      ),
    ];
  }

  ProjectCardData getSelectedProject() {
    return ProjectCardData(
      percent: .3,
      projectImage: const AssetImage(ImageRasterPath.logo1),
      projectName: "Marketplace Mobile",
      releaseTime: DateTime.now(),
    );
  }
}
