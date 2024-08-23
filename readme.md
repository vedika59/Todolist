

# TodoList Smart Contract

![image](https://github.com/user-attachments/assets/25b027e6-eb58-4224-a441-75322482db4b)
![image](https://github.com/user-attachments/assets/54b4a4fe-aac6-4e6e-bcd2-11700e9138bd)


## Vision
The TodoList smart contract is a decentralized application (dApp) designed to manage tasks on the Ethereum blockchain. It provides a simple and transparent way for users to create, track, and remove tasks. This contract leverages the benefits of blockchain technology to ensure task data integrity and user accountability, while also allowing users to manage their tasks directly from their Ethereum wallets.

## Flowchart
Below is a simplified flowchart of the TodoList contract operations:

```
 +-----------------+       +-----------------+       +-----------------+
 |                 |       |                 |       |                 |
 |  Create Task    |       | Complete Task   |       | Remove Task     |
 |                 |       |                 |       |                 |
 +--------+--------+       +--------+--------+       +--------+--------+
          |                        |                        |
          v                        v                        v
 +--------+--------+       +--------+--------+       +--------+--------+
 |                 |       |                 |       |                 |
 |   Store Task    |       |  Update Status  |       |  Delete Task    |
 |  (tasks mapping)|       |  (tasks mapping)|       |  (tasks mapping)|
 |                 |       |                 |       |                 |
 +--------+--------+       +--------+--------+       +--------+--------+
          |                        |                        |
          v                        v                        v
 +--------+--------+       +--------+--------+       +--------+--------+
 |                 |       |                 |       |                 |
 | Emit TaskCreated|       | Emit TaskCompleted|    | Emit TaskRemoved |
 |   Event         |       |   Event         |       |   Event         |
 +-----------------+       +-----------------+       +-----------------+
```

## Contract Address
Once deployed, the contract will have a unique Ethereum address. Replace `YOUR_CONTRACT_ADDRESS` with the actual address:

```
Contract Address: 0x4e7a421226f03f95eceec58317aa44f024a297fa
```
![image](https://github.com/user-attachments/assets/7a2303fd-1eb4-4947-9b07-180626855746)


## Future Scope
- **User Authentication:** Integrate with decentralized identity solutions for enhanced user management.
- **Task Prioritization:** Add support for task priority levels to better organize tasks.
- **Notifications:** Implement a notification system to alert users of task changes or reminders.
- **Multi-User Collaboration:** Extend the contract to allow shared task lists and collaboration features.
- **UI Integration:** Develop a frontend application to interact with this smart contract, providing a more user-friendly interface.

## Contact
For any questions or further information, feel free to reach out:

- **Name:** Vedika Sahu
- **Email:** vedikas59@gmail.com
- **LinkedIn:** https://www.linkedin.com/in/vedika-sahu-569a36321
- **GitHub:** https://github.com/vedika59
