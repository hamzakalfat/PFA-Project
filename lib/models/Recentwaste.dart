class Recentwaste{
  final String icon , title, date , quantity ;
  Recentwaste({
    required this.icon,
    required this.date,
    required this.quantity ,
    required this.title,
});
}
List demoRecentwaste =[
   Recentwaste(
     icon: "",
     title: "plastic",
     date: "16/04/2023",
     quantity: "1 kg",
   ),
  Recentwaste(
    icon: "",
    title: "paper",
    date: "16/04/2023",
    quantity: " 0.5 kg",
  ),
  Recentwaste(
    icon: "",
    title: "organic matters",
    date: "16/04/2023",
    quantity: "1 kg",
  ),
];