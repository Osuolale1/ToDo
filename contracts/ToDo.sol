// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract  ToDo {
List[] public todoList;

 struct  List {
    string title;
    string description;
    bool isDone;
 }

 function createTodo(string memory _title, string memory _description) external  {
    List memory newTodo = List({
        title: _title,
        description: _description,
        isDone: false
    });
  todoList.push(newTodo);
 }
 
 function toggleIsDone(uint index) external {
    require(index < todoList.length, "invalid index");
    todoList[index].isDone = !todoList[index].isDone;
 }

 function updateTitle(uint index, string memory newTitle) external {
   require(index < todoList.length, "invalid index");
   todoList[index].title = newTitle;
 }

  function updateDescription(uint index, string memory newDescription) external {
   require(index < todoList.length, "invalid index");
   todoList[index].description = newDescription;
 }

  function updateIsDone(uint index, bool newIsDone) external {
   require(index < todoList.length, "invalid index");
   todoList[index].isDone = newIsDone;
 }

 function deleteTodo(uint256 index) external {
        require(index < todoList.length, "Invalid index");

        todoList[index] = todoList[todoList.length - 1];

        todoList.pop();
}

function getTodo() external view returns(List[] memory) {
    return todoList;
}
}