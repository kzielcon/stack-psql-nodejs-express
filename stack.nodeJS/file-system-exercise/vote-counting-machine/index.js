const fs = require('fs/promises')
const { getVote } = require('./getvote')

const votes = [
	'A', 'A', 'A', 'B', 'A',
	'C', 'C', 'C', 'c', 'c',
	'invalid', 'invalid again',
	'', '', '', '', '', 'b'
]

const startVoting = async () => {
	for(const vote of votes) {
		console.log(vote)
		await fs.writeFile('ballot', vote)
		await getVote()
	}
}
startVoting();

