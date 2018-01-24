Brand.destroy_all
Type.destroy_all
Hacctype.destroy_all
Currency.destroy_all

Brand.create([{name: 'Angelic Pretty', abbreviation: 'AP'},
	{name: 'Baby, the Stars Shine Bright', abbreviation: 'BtSSB'},
	{name: 'Innocent World', abbreviation: 'IW'},
	{name: 'Alice and the Pirates', abbreviation: 'AatP'},
	{name: 'Metamorphose Temps de Fille', abbreviation: "Meta"},
	{name: 'Victorian Maiden', abbreviation: "VM"},
	{name: 'Beth by VM'},
	{name: 'Mary Magdalene', abbreviation: "MM"},
	{name: 'Juliette et Justine', abbreviation: "JetJ"},
	{name: 'Moi-même-Moitié', abbreviation: "MMM"},
	{name: 'Bodyline', abbreviation: "BL"},
	{name: 'Atelier Boz', abbreviation: "Boz"},
	{name: 'Atelier Pierrot'},
	{name: 'Emily Temple Cute/Shirley Temple', abbreviation: "ETC"},
	{name: 'Jane Marple', abbreviation: "JM"},
	{name: 'Excentrique'},
	{name: 'Putumayo', abbreviation: "Putu"},
	{name: 'Antique Beast', abbreviation: "AB"},
	{name: 'Black Peace Now', abbreviation: "BPN"},
	{name: 'Maxcicimam', abbreviation: "MAM"},
	{name: 'Triple Fortune', abbreviation: "3F"},
	{name: 'Chantilly'},
	{name: 'Cornet'},
	{name: 'Grimoire'},
	{name: 'HeartE'},
	{name: 'Chocomint'},
	{name: '6%DOKIDOKI'},
	{name: 'MILK'},
	{name: 'Physical Drop'},
	{name: 'Millefleurs'},
	{name: 'Haenuli'},
	{name: 'Lief'},
	{name: 'Krad Lanrete', abbreviation: "KL"},
	{name: 'Dear Celine', abbreviation: "DC"},
	{name: 'Chess Story', abbreviation: "CS"},
	{name: 'Ista Mori'},
	{name: 'Yolanda'},
	{name: 'Infanta'},
	{name: 'CEL Design', abbreviation: "CEL"},
	{name: 'Cherie Cerise'},
	{name: 'Le Miroir'},
	{name: 'Equinox'},
	{name: 'Indie (other)'},
	{name: 'Handmade'},
	{name: 'Taobao Brand (other)'},
	{name: 'Offbrand (other)'}])

p "Created #{Brand.count} brands"

Type.create([{name: 'One Piece', abbreviation: 'OP'},
	{name: 'Jumperskirt', abbreviation: 'JSK'},
	{name: 'Skirt', abbreviation: 'SK'},
	{name: 'Hair Accessory'},
	{name: 'Blouse'},
	{name: 'Set'},
	{name: 'Socks'},
	{name: 'Jewelry'},
	{name: 'Bag'},
	{name: 'Coat'},
	{name: 'Bolero'},
	{name: 'Pants'},
	{name: 'Bloomers'},
	{name: 'Salopette', abbreviation: "Salo"},
	{name: 'Cardigan'},
	{name: 'Corset/Bustier'},
	{name: 'Cape'},
	{name: 'Vest'},
	{name: 'Petticoat'},
	{name: 'Parasol/Umbrella'},
	{name: 'Cutsew'},
	{name: 'Shoes'},
	{name: 'Houseware'},
	{name: 'e-Mook/Magazine'},
	{name: 'Accessory (other)'},
	{name: 'Other'}])

p "Created #{Type.count} item types"

Hacctype.create([{name: 'Headbow'},
	{name: 'Bonnet'},
	{name: 'Barrette'},
	{name: 'Hair Comb(s)'},
	{name: 'Hair Clip(s)'},
	{name: 'Scrunchie'},
	{name: 'Beret'},
	{name: 'Straw Hat'},
	{name: 'Mini Hat'},
	{name: 'Witch Hat'},
	{name: 'Hat (other)'},
	{name: 'Cloche'},
	{name: 'Barrette'},
	{name: 'Canotier'},
	{name: 'Earmuffs'},
	{name: 'Rectangle Headdress'},
	{name: 'Headdress (other)'},
	{name: 'Veil'},
	{name: 'Hair Band'},
	{name: 'Babushka/Triangle Headdress'},
	{name: 'Hairpin(s)'},
	{name: 'Mob Cap'},
	{name: 'Nurse\'s Cap'},
	{name: 'Animal Ears'},
	{name: 'Head Chain'},
	{name: 'Crown/Tiara'}
	])

p "Created #{Hacctype.count} hair accessory item types"

Currency.create([{name: 'JPY', symbol: '¥'},
	{name: 'USD', symbol: '$'},
	{name: 'CNY', symbol: '¥'},
	{name: 'KRW', symbol: '₩'},
	{name: 'CAD', symbol: '$'},
	{name: 'AUD', symbol: '$'},
	{name: 'EUR', symbol: '€'},
	{name: 'GBP', symbol: '£'},
	{name: 'BRL', symbol: 'R$'},
	{name: 'HKD', symbol: '$'},
	{name: 'MXN', symbol: '$'},
	{name: 'CLP', symbol: '$'},
	{name: 'CHF', symbol: 'Fr'},
	{name: 'RUB', symbol: '₽'},
	{name: 'SGD', symbol: '$'}
	])

p "Created #{Currency.count} currencies"