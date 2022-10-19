var testABI =[
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "nombre_",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "apellido_",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "curso_",
				"type": "string"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "apellido",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "materia",
				"type": "string"
			}
		],
		"name": "aprobo",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "curso",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "nombre_completo",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "materia",
				"type": "string"
			}
		],
		"name": "nota_materia",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "promedio",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "materia",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "nota",
				"type": "uint256"
			}
		],
		"name": "set_nota_materia",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]