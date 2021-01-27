module.exports = {
	name: 'now',
	description: 'count',
	execute(message) {
		function logEveryiSeconds(i) {
			setTimeout(() => {
				message.channel.send(i);
				logEveryiSeconds(++i);
			}, 3000);
		}

		logEveryiSeconds(1);
	},
};
