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
}