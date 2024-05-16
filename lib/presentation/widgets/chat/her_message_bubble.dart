import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            //color: Colors.lightBlue,
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical:10),
            child: Text('Her difficult test', style: TextStyle(color: Colors.white),),
          )
        ),

        const SizedBox(height: 5,),

        _ImageBubble(),

        const SizedBox(height: 10,)
      ],
    );
  }
}

//https://yesno.wtf/
class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/11-a23cbde4ae018bbda812d2d8b2b8fc6c.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          
          if(loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical:  5),
            child: const Text('Te estan enviando imagen'),
          );
        },
      )
    );
  }
}