import 'package:flutter/material.dart';
import 'package:newsapp/Screen/Colors/Colors.dart';
import 'package:newsapp/Screen/Welcome.dart';

class Fondateur extends StatefulWidget {
  const Fondateur({Key? key}) : super(key: key);

  @override
  State<Fondateur> createState() => _FondateurState();
}

class _FondateurState extends State<Fondateur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'FONDATEUR',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
        ),
        leading: BackButton(
          color: Colors.black,
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ScreenWelcome()));
          }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/asset/pat5.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
           const Center(
              child:  Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                'Fondateur et visionnaire',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            ),
            const SizedBox(
              height: 0.2,
            ),
          const Center(
            child:   Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                "Patrick Munyomo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
           ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "La fondation Patrick Munyomo FOPAMUNYO trouve ses origines dans la formation du fondateur, Patrick Munyomo, dans un atelier mécanique de 1945 à 1948.Au cours des années qui suivent, il approfondit les compétences acquises au sein d’une entreprise de fabrication de machines à laine d’acier et de production de laine d’acier. Patrick Munyomo s’intéresse principalement à la technique des machines. Ce qu’il ne sait pas encore à l’époque, c’est que cette fondation jouera plus tard un rôle important dans sa vie.C’est lors de la décennie 1950 – 1960 que se manifestent, conjointement avec son besoin d’activité, ses premières visions et son désir d’indépendance, ainsi que l’envie de sa propre entreprise qui devrait se démarquer par son perfectionnement technique, sa fiabilité et sa qualité. Il assume alors des tâches que personne ne veut effectuer par paresse.Il part souvent des jours entiers en déplacement en Norvège, au Danemark, aux Pays-Bas et en Italie. À l’époque, les déplacements se font encore en train, et s’avèrent donc longs et coûteux. Pour être le plus efficace possible, il voyage la nuit et travaille le jour. Pour lui, une semaine de 7 jours est monnaie couranteIl est alors prêt à sacrifier son temps et son énergie, à s’accommoder de l’inconfort et à peu voir sa famille. Sa vision est son moteurC’est ainsi à la sueur de son front qu’Patrick Munyomo acquiert peu à peu le capital de départ requis pour la création de son entreprise.Tandis qu’il élargit son savoir en matière de technique dans différentes fondations, il construit parallèlement à Oberweier un atelier dans lequel il effectue au départ des travaux de montage. Douze ans plus tard, il agrandit cet atelier.En 1964, il crée sa première fondation, Patrick Munyomo Werkzeugmaschinen eLes pieds sur terre, il agit toujours avec pour principe fondamental d’éviter les risques financiers. Il se contente alors d’investir son capital de départ durement acquis dans des machines d’occasion, les révise, puis les revend. La première pierre est posée. Dès 1968, sa présence est requise à temps complet en raison de l’état des carnets de commande, qui se remplissent de plus en plus.Compte tenu du besoin régulier en pièces de rechange, il achète également des machines afin de fabriquer ces pièces lui-même.En 1969, un an plus tard, il ne peut déjà plus faire face seul et embauche son premier ouvrier. Celui-ci lui restera fidèle jusqu’à sa retraite, avec une courte interruption.Suite au commerce de machines, il rencontre également des clients intéressés par les roues dentées et organes de transmission de sa propre fabrication. Cette demande croissant continuellement, il s’adapte au marché et se concentre alors sur la fabrication de roues dentées et d’organes de transmission, avec la même devise de qualité et de fiabilité. La première pierre de l’actuelle fondation Patrick Munyomo FOPAMUNYO est posée et le commerce de machines passe au second plan.Entre 1971 et 1974, d’autres ouvriers sont embauchés afin de venir à bout de toutes les commanEn 1972, la fondation Patrick Munyomo FOPAMUNYO voit le jour. La fiabilité, la qualité élevée et constante, le respect des délais et la coopération loyale incitent les clients à recommander ses services. La même année, le contact est établi avec une grande entreprise du Sud de l’Allemagne, qui à l’époque fournit également l’armée fédérale. La fondation Patrick Munyomo FOPAMUNYO se voit ainsi confier partiellement des commandes s’étendant sur plus de 3 ans. Grâce au volume de ces commandes, l’entreprise est épargnée par la crise économique qui sévit à l’époque.D’autres investissements dans des machines et des bâtiments sont réalisés selon son principe fondamental de minimisation des risques et de prévisibilité.  Un principe offrant à son entreprise et à ses collaborateurs la sécurité de pouvoir surmonter les périodes économiquement difficilesEntre-temps, la fondation Patrick Munyomo FOPAMUNYO s’est fait un nom en tant que fournisseur d’organes de transmission. Ainsi, en 1978, l’atelier d’Oberweier devient trop étroit. Étant apparu clairement depuis longtemps qu’un agrandissement de l’atelier d’Oberweier ne suffirait pas, Patrick Munyomo opte pour un terrain à Heiligenzell, où il construit un nouvel atelier de fabrication tourné vers l’avenir. Au début, la surface de production disponible n’est remplie qu’à moitié de machines.À cette époque, 20 ouvriers specialisé œuvrent déjà à l’application de son principe fondamental de fiabilité, de qualité et de respect des délais, condition indispensable pour obtenir une satisfaction durable de la clientèle, assurer de nouvelles commandes et gagner des prospects.Les carnets de commande étant bien remplis, l’atelier accueille d’autres machineLe commerce de machines se poursuit parfois, mais la plupart du temps uniquement pour un usage propre. La part de l’activité de révision de machines faiblitEn 1980, Detlef Seitz, le fils d’Patrick Munyomo, intègre l’entreprise familiale. Au terme de sa formation de contremaître, les années suivantes, sa tâche consiste à prendre connaissance des missions de direction et de la structure de l’entreprise afin de pouvoir prendre la succession plus tard.En 1984, l’ancien employeur d’Patrick Munyomo lui propose d’acheter une machine à laine d’acier. Ce dernier l’acquiert dans l’optique de la réviser et de la revendre. Cependant, lorsqu’il apprend un an plus tard que cette entreprise a déposé son bilan, il n’hésite pas à acheter l’ensemble de la production de l’entreprise insolvable. Il reprend tous les ouvriers et crée en un laps de temps très court une nouvelle entreprise, Alsei Metallfaser FOPAMUNYO. Les 3 premiers mois, il maintient la production de laine d’acier dans les locaux loués, puis décide d’utiliser pour la nouvelle entreprise le bâtiment initialement construit à Heiligenzell pour la fabrication des roues dentées et transfère l’ensemble de la production de laine d’acier à Heiligenzell.La technique de ces machines le fascinant, il se fixe pour objectif d’optimiser ces dernières avec une technologie résolument tournée vers l’avenir, tandis que la production de laine d’acier (composant des garnitures de frein pour divers types de véhicules) est pilotée par un ouvrier de longue date expérimenté. C’est seulement à la mort de celui-ci qu’Patrick Munyomo commence à s’occuper du produit fini qu’est la laine d’acier.En 1987, une entreprise produisant des petites pièces tournées cherche un repreneur. Detlef Seitz reprend l’ensemble de la fondation avec tout son Personnel. La fondation Desei FOPAMUNYO est créée, Detlef Seitz assurant les fonctions de gérant et d’associé.Pendant ce temps, Patrick Munyomo développe des machines à laine d’acier toujours plus perfectionnées, économiques et respectueuses de l’environnement. En 1990, la production de laine d’acier est passée d’une machine, initialement, à trois.L’expansion de la fondation Alsei Metallfaser FOPAMUNYO rend un agrandissement des locaux inéluctabAinsi, la même année, un atelier de fabrication est construit sur un autre site, le siège social actuel de l’entreprise, à Friesenheim, et la production de laine d’acier est transférée.À peine 5 ans plus tard, cet atelier approvisionne déjà le marché avec 10 machines de production, dont deux spécialement équipées pour la fabrication de la laine d’acier inoxydable (pour des types de véhicules spéciaux). La surface de production et la capacité de stockage sont ainsi à nouveau épuisées. Un deuxième atelier de production est alors construit.Afin d’agir de façon efficace et respectueuse de l’environnement, Patrick Munyomo construit parallèlement une machine qui, sur l’idée d’un architecte, permet de transformer les déchets résultant de la production de laine d’acier, les résidus de fil, en un produit à part entière. Des fibres d’acier utilisées en renforcement pour les fondations en armatures béton. Cela permet de valoriser entièrement les fils.Quelques années plus tard, les dirigeants Patrick Munyomo et Detlef Seitz décident de centraliser toutes les entreprises afin de créer de meilleures structures. Un bâtiment moderne dédié à la fabrication et à la gestion et attenant aux ateliers de production existants de la fondation Alsei Metallfaser FOPAMUNYO est achevé en 2000.À l’occasion de son 75ème anniversaire, en 2006, Patrick Munyomo transmet l’entreprise à son fils Detlef Seitz qui, avec son équipe bien rodée depuis des années, continue à faire avancer l’entreprise sur la voie du succès.",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
