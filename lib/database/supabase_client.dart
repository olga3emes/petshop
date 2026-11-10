import 'package:supabase/supabase.dart';

class DatabaseConfig{
  static const url= "https://idaywcdjidrhcupelwyn.supabase.co";

  static const anonKey ="";//"sb_publishable_8SR80rZ8ZxAKdDEaIkAzXg_MD5h1c--";

  static final client = SupabaseClient(url, anonKey);
}