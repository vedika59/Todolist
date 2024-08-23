// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;
    mapping(address => uint[]) public userTasks;
    uint public taskCount = 0;

    event TaskCreated(uint id, string content, bool completed);
    event TaskCompleted(uint id, bool completed);
    event TaskRemoved(uint id);

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        userTasks[msg.sender].push(taskCount);
        emit TaskCreated(taskCount, _content, false);
    }

    function completeTask(uint _id) public {
        Task storage task = tasks[_id];
        require(task.id > 0 && task.id <= taskCount, "Task not found");
        require(!task.completed, "Task already completed");

        task.completed = true;
        emit TaskCompleted(_id, true);
    }

    function removeTask(uint _id) public {
        Task storage task = tasks[_id];
        require(task.id > 0 && task.id <= taskCount, "Task not found");
        require(task.completed, "Only completed tasks can be removed");

        delete tasks[_id];
        emit TaskRemoved(_id);
    }

    function getUserTasks() public view returns (Task[] memory) {
        uint[] memory taskIds = userTasks[msg.sender];
        Task[] memory userTasksList = new Task[](taskIds.length);

        for (uint i = 0; i < taskIds.length; i++) {
            userTasksList[i] = tasks[taskIds[i]];
        }
        return userTasksList;
    }
}
