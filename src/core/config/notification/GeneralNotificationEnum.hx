package core.config.notification;

/**
 * @author Andrii Andriushchenko
 */
@:enum
abstract GeneralNotificationEnum (String) from String to String
{
	//command
	var START_UP_COMMAND = "start_up_command";
	var LOAD_RESOURCE_COMMAND = "load_resource_command";
	var PREPARE_REEL_ENGINE_COMMAND = "prepare_reel_engine_command";
	//mediator
	var ADD_CHILD_TO_ROOT = "add_child_to_root";
	var REMOVE_CHILD_FROM_ROOT = "remove_child_from_root";
}