import 'dart:async';
void	main()	{
  print('Buscando	a	resposta...');
  buscarResposta().then((resposta)	{
    print('A resposta é	$resposta');
  });
  print('para	a	vida,	o	universo	e	tudo	mais...');
}
Future<String>	buscarResposta()	async	{
  final	completer	=	Completer<String>();
  Timer(Duration(seconds:	2),	()	{
    completer.complete('42');
  });
  return	completer.future;
}