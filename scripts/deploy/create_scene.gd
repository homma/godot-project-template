@tool
extends EditorScript

const utils = preload("res://scripts/lib/utils.gd")

# Entry Point

func _run():
    pass

# Sample Functions

func create_3d_scene_sample():

    # root node
    var node = ClassDB.instantiate("Node3D")
    node.set_name("root")
    node.show()

    # child node
    var child = ClassDB.instantiate("Node3D")
    child.set_name("child")

    ## add to root node
    root.add_child(child)

    ## add to the scene
    child.set_owner(root)

    utils.create_scene_from_node(node, "sample 3D scene")

func create_2d_scene_sample():

    # root node
    var node = ClassDB.instantiate("Node2D")
    node.set_name("root")
    node.show()

    # child node
    var child = ClassDB.instantiate("Node2D")
    child.set_name("child")

    ## add to root node
    root.add_child(child)

    ## add to the scene
    child.set_owner(root)

    utils.create_scene_from_node(node, "sample 2D scene")
