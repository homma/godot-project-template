# create a scene from a node
static func create_scene_from_node(root_node, scene_name):
    # PackedScene
    var scn = PackedScene.new()
    scn.pack(root_node)

    # generate a file path to store a scene
    var path = "res://" + scene_name + ".tscn"

    var n = 0
    while FileAccess.file_exists(path):
        n += 1
        path = "res://" + scene_name + str(n) + ".tscn"

    # save the PackedScene
    ResourceSaver.save(scn, path)

    # open the PackedScene in the editor
    EditorInterface.open_scene_from_path(path)

    return path
