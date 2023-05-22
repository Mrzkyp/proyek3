<<<<<<< HEAD
=======
// ignore_for_file: prefer_const_constructors

>>>>>>> 74acfd7 (open camera)
part of dashboard;

class _Sidebar extends StatelessWidget {
  const _Sidebar({
    required this.data,
    Key? key,
  }) : super(key: key);

  final ProjectCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kSpacing),
              child: ProjectCard(
                data: data,
              ),
            ),
            const Divider(thickness: 1),
            SelectionButton(
              data: [
                SelectionButtonData(
                  activeIcon: EvaIcons.grid,
                  icon: EvaIcons.gridOutline,
                  label: "Beranda  ",
                  onTap: () {
                    Get.to(() => DashboardScreen());
                  },
                ),
                SelectionButtonData(
                  activeIcon: EvaIcons.archive,
                  icon: EvaIcons.archiveOutline,
                  label: "Daftar Penyakit",
                  onTap: () {
                    Get.to(() => DaftarPenyakit());
                  },
                ),
                SelectionButtonData(
                  activeIcon: EvaIcons.calendar,
                  icon: EvaIcons.calendarOutline,
                  label: "Diagnosa",
<<<<<<< HEAD
                  // onTap: () {
                  //   Get.to(() => Diagnosa());
                  // },
=======
                  onTap: () {
                    Get.to(() => Diagnosa());
                  },
>>>>>>> 74acfd7 (open camera)
                ),
                SelectionButtonData(
                  activeIcon: EvaIcons.email,
                  icon: EvaIcons.emailOutline,
                  label: "Deteksi",
<<<<<<< HEAD
=======
                  onTap: () {
                    Get.to(() => Deteksi());
                  },
>>>>>>> 74acfd7 (open camera)
                  totalNotif: 20,
                ),
                SelectionButtonData(
                  activeIcon: EvaIcons.person,
                  icon: EvaIcons.personOutline,
                  label: "Profil",
                ),
                SelectionButtonData(
                  activeIcon: EvaIcons.settings,
                  icon: EvaIcons.settingsOutline,
                  label: "Log Out ",
                ),
              ],
              onSelected: (index, value) {
                log("index : $index | label : ${value.label}");
              },
            ),
            const Divider(thickness: 1),
            const SizedBox(height: kSpacing * 2),
          ],
        ),
      ),
    );
  }
}
