import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:meet_a_flora/core/services/local_keys_service.dart';
import 'package:meet_a_flora/features/discovery/data/models/discovery_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';


abstract class BaseDiscoveryRemoteDataSource {
  Future<DiscoveryModel> getDiscovery();
}


@LazySingleton(as: BaseDiscoveryRemoteDataSource)
class DiscoveryRemoteDataSource implements BaseDiscoveryRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   DiscoveryRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<DiscoveryModel> getDiscovery() async {
    try {
      return DiscoveryModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
