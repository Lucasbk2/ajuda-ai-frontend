enum Envoriment{
  dev,
  prod,
  test
}
class AppConfig{
   static final Envoriment currentEnvoriment = Envoriment.test;

   static String strConexao(){
     if(currentEnvoriment == Envoriment.dev) return "localhost:400";
     else if(currentEnvoriment == Envoriment.prod) return "herokuapk";
     else if(currentEnvoriment == Envoriment.test) return "localhost:400";
   }
}
