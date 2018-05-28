
class Node {
    var data:Int
    var leftNode:Node?
    var rightNode:Node?
    init(data:Int) {
        self.data = data
        leftNode = nil
        rightNode = nil
    }
}

class BST {
    var headNode:Node?
    init() {
        headNode = nil
    }
}

extension BST {
    func insertNode(node:Node) {
        guard let hNode = headNode else {
            headNode = node
            return
        }
        var temp = hNode
        
        repeat {
            if (temp.data > node.data) {
                if (temp.rightNode == nil) {
                    temp.rightNode = node
                    break
                }else {
                    temp = temp.rightNode!
                }
            }else {
                
                if (temp.leftNode == nil) {
                    temp.leftNode = node
                    break;
                }else {
                    temp = temp.leftNode!
                }
            }
            
        }while(temp != nil)
    }
    
    func search(of value:Int) -> Bool{
        guard let hNode = headNode else {
            return false
        }
        var tempNode:Node? = hNode
        
        repeat {
            
            if (value == (tempNode?.data)!) {
                return true
            }
            if (value > (tempNode?.data)!) {
                tempNode = tempNode?.leftNode
            }else {
                tempNode = tempNode?.rightNode
            }
        }while(tempNode != nil)
        
        return false
    }
    func peak() {
        print(headNode?.data)
    }
}

let bst = BST()
bst.insertNode(node: Node(data: 15))
bst.insertNode(node: Node(data: 2))
bst.insertNode(node: Node(data: 3))
bst.insertNode(node: Node(data: 18))
bst.insertNode(node: Node(data: 14))
bst.insertNode(node: Node(data: 10))
bst.insertNode(node: Node(data: 17))
bst.insertNode(node: Node(data: 20))

bst.search(of: 25)
bst.search(of: 20)








