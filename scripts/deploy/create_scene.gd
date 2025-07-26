@tool
extends EditorScript

const utils = preload("res://scripts/lib/utils.gd")

# Entry Point

func _run():
    pass

# Sample Functions

func create_3d_scene_sample():

    # root node
    var root = ClassDB.instantiate("Node3D")
    root.set_name("root")
    root.show()

    # child node
    var child = ClassDB.instantiate("Node3D")
    child.set_name("child")

    ## add to root node
    root.add_child(child)

    ## add to the scene
    child.set_owner(root)

    utils.create_scene_from_node(root, "sample 3D scene")

func create_2d_scene_sample():

    # root node
    var root = ClassDB.instantiate("Node2D")
    root.set_name("root")
    root.show()

    # child node
    var child = ClassDB.instantiate("Node2D")
    child.set_name("child")

    ## add to root node
    root.add_child(child)

    ## add to the scene
    child.set_owner(root)

    utils.create_scene_from_node(root, "sample 2D scene")
