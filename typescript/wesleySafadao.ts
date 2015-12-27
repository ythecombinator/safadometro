export class WesleySafadao {
	day: number;
	month: number;
	year: number;
	
	safadeza: number;
	anjo: number;
	sum: number;
	
	constructor (day: number, month: number, year: number) {
		this.day = day;
		this.month = month;
		this.year = year;
	}
	
	getCalc(){
		this.sum = 0;
		
		while(this.month > 0) {
			this.sum += this.month;
			this.month--;
		}
		
		this.safadeza = this.sum + (this.year / 100) * (50 - this.day);
		
		this.anjo = 100 - this.safadeza;
		
		return 'Você é ' + this.safadeza + '% safado e ' + this.anjo + '% anjo';
	}
}
