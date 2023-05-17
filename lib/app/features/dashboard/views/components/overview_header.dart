part of dashboard;

class _OverviewHeader extends StatelessWidget {
  const _OverviewHeader({
    required this.onSelected,
    this.axis = Axis.horizontal,
    Key? key,
  }) : super(key: key);

  final Function(TaskType? task) onSelected;
  final Axis axis;
  @override
  Widget build(BuildContext context) {

    return Obx(
      () => (axis == Axis.horizontal)
          ? const Row(
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Spacer(),
              ],
            )
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                ),
              ],
            ),
    );
  }

}
