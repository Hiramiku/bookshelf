import 'package:book_shelf/pages/home/widgets/book_card_item.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../../design/images.dart';
import 'bloc/book_list_bloc.dart';

class CardItemsPage extends StatefulWidget {
  @override
  State<CardItemsPage> createState() => _CardItemsPageState();
}

class _CardItemsPageState extends State<CardItemsPage> {
  final _bookListBloc = BookListBloc();

  @override
  void initState(){
    super.initState();
    //_bookListBloc.add(); //event
  }

  @override
  Widget build(BuildContext context) {
    final _controllerSearch = TextEditingController();

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text('BookShelf'),
          snap: true,
          floating: true,
          pinned: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(75),
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: backlightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: _controllerSearch,
                style: const TextStyle(color: Colors.white70, fontSize: 18),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Найти книгу',
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: _controllerSearch.clear),
                  prefixIconColor: Colors.white70,
                  suffixIconColor: Colors.white70,
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
    SliverGrid.count(
    crossAxisCount: 2,
      childAspectRatio:0.52,
    children: <Widget>[
            BookCardItem(
        bookname: 'Унесенные ветром',
        bookautor: 'Маргарет Митчелл',
        img: unesVetrom,
        annotation: '''     "Унесенные ветром" - единственный роман Маргарет Митчелл. Ее жизнь рано оборвалась из-за трагической случайности, но образам Скарлетт О'Хара и Ретта Батлера, рожденным воображением "маленькой смелой женщины" - как называли писательницу американские критики, - суждено жить вечно.
     Это книга о любви и о войне, о предательстве и верности, о жестокости и о красоте самой жизни.Это одна из тех книг, к которым возвращаешься снова и снова спустя годы и испытываешь радость от встречи...'''),
      BookCardItem(
        bookname: 'Книжный вор',
        bookautor: 'Маркус Зусак',
        img: knijVor,
        annotation: '''     Январь 1939 года. Германия. Страна, затаившая дыхание. Никогда еще у смерти не было столько работы. А будет еще больше. Мать везет девятилетнюю Лизель Мемингер и ее младшего брата к приемным родителям под Мюнхен, потому что их отца больше нет - его унесло дыханием чужого и странного слова "коммунист", и в глазах матери девочка видит страх перед такой же судьбой. В дороге смерть навещает мальчика и впервые замечает Лизель. Так девочка оказывается на Химмель-штрассе - Небесной улице. Кто бы ни придумал это название, у него имелось здоровое чувство юмора. Не то чтобы там была сущая преисподняя. Нет. Но и никак не рай. "Книжный вор" - недлинная история, в которой, среди прочего, говорится: об одной девочке; о разных словах; об аккордеонисте; о разных фанатичных немцах; о еврейском драчуне; и о множестве краж.'''),
      BookCardItem(
        bookname: 'Властелин Колец',
        bookautor: 'Дж. Р. Р. Толкин',
        img: vlastelinKolets, annotation: '''     Джон Рональд Руэл Толкин (3.01.1892 - 2.09.1973) - писатель, поэт, филолог, профессор Оксфордского университета, родоначальник современной фэнтези. В 1937 году был написан "Хоббит", а в середине 1950-х годов увидели свет три книги "Властелина колец", повествующие о Средиземье - мире, населенном представителями волшебных рас со сложной культурой, историей и мифологией.
Существует свыше десятка переводов трилогии на русский язык.''',),
      BookCardItem(
        bookname: 'Гордость и \nпредубеждение',
        bookautor: 'Джейн Остен',
        img: gordost, annotation: '''     Джейн Остен задумала свой самый знаменитый роман "Гордость и предубеждение", когда ей был всего 21 год. Замысел совершенствовался два года, но результат превзошел все ожидания. Впрочем, современники вовсе так не считали. Критики встретили роман холодно - даже не подозревая, что спустя недолгое время книга завоюет читателей и затем на протяжении 200 лет будет будоражить воображение ценителей романтической литературы. Сегодня история заблуждений и прозрения Элизабет Беннет и мистера Дарси известна всем любителям классики. Сама писательница считала свою героиню "самым восхитительным персонажем, который когда-либо появлялся в печати", и все же она была далека от того, чтобы оправдывать ее ошибочные суждения.''',),
      BookCardItem(
        bookname: 'Путешествия Гулливера',
        bookautor: 'Джонатан Свифт',
        img: guliver, annotation: '''      Уже почти триста лет главным творением Джонатана Свифта зачитываются взрослые и дети во всём мире! Два самых удивительных путешествия корабельного врача Лемюэля Гулливера в Лилипутию и Бробдингнег, страну великанов, вошли в эту книгу в классическом пересказе Тамары Габбе и с великолепными иллюстрациями Вадима Челака.
Захватывающие приключения, смешные и любопытные детали жизни и быта лилипутов и великанов, обаятельный и мудрый главный герой - неудивительно, что "Путешествия Гулливера" до сих пор считаются обязательной книгой для детского чтения и продолжают вдохновлять маленьких фантазеров и любителей приключений.''',),
      BookCardItem(
        bookname: 'Над пропастью во ржи',
        bookautor: 'Дж. Д. Сэлинджер',
        img: nad_propost, annotation: '''      Мальчика зовут Холден Колфилд, и живет он в повести "Над пропастью во ржи", до сих пор боготворимой миллионами "непонятых" подростков. Холден наделен "абсолютным нравственным слухом" - он мгновенно различает фальшь, с него словно содрана кожа, обнажены нервные окончания, его сверхчувствительность - особого рода радар, улавливающий то, мимо чего спокойно проходят другие. Но он не ангел и не "дитя цветов", а трудный подросток во всей красе: со своими переживаниями, волнениями и талантами, но и со всеми тараканами тоже. Но у Холдена есть еще и странная, но очень трогательная мечта…''',),
      ],

    ),

    ]
      //floatingActionButton: FloatingActionButton(onPressed: () { BookItemsRepository().getBookList(); }, child: Icon(Icons.add, color: Colors.white),),
      ),
    );
  }
}
