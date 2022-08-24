const fs = require('fs/promises')

const getVote = async () => {

    let a = b = c = invalid = abstain = 0

    let vote = ""

    try {
        let data = await fs.readFile("ballot", { encoding: 'utf8' })
        data = data.toUpperCase()

        if (data == "A") {
            a++;
            vote = "A";
        }
        else if (data == "B") {
            b++;
            vote = "B"; 
        }
        else if (data == "C") {
            c++
            vote = "C";
        }
        else if (data == "") {
            abstain++
            vote = "Abstain";
        }
        else {
            invalid++
            vote = "Invalid";
        }


        let votes = await fs.readFile("votes.json", { encoding: 'utf8' })
        votes = JSON.parse(votes);

        votes.A = votes.A + a;
        votes.B = votes.B + b;
        votes.C = votes.C + c;
        votes.Invalid = votes.Invalid + invalid;
        votes.Abstain = votes.Abstain + abstain;

        await fs.writeFile('votes.json', JSON.stringify(votes))

        const curDate = new Date();
        let voteLog = "Received vote at " + curDate + ": " + vote + "\n"
        
        await fs.writeFile('log.txt', voteLog, { flag: 'a+' });

        console.log(voteLog)

    } catch (err) {
        console.log('')
    }
}


module.exports = { getVote : getVote }