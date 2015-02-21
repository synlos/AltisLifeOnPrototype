waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

//player createDiarySubject ["sealteamsloth","Chaotentrupp"];
//player createDiarySubject ["changelog","Changelog"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["netiquette","Netiquette"];
//player createDiarySubject ["rpgrules","RPG Regeln"];
player createDiarySubject ["basiclaw","Grundgesetz"];
player createDiarySubject ["punishment","StGB"];
player createDiarySubject ["roadlaw","StVO"];
player createDiarySubject ["weaponlaw","WaffG"];
player createDiarySubject ["naturelaw","BNatSchG"];
player createDiarySubject ["druglaw","BtmG"];
player createDiarySubject ["airlaw","LuftVG"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];
*/
		player createDiaryRecord ["serverrules",
		[
			"Allgemeines:", 
				"
				<br/>
				Folgendes ist strengstens verboten und ist sofort einem<br/>
				Admin zu melden:<br/><br/>
				
				Nutzen von Hacks -> Perm. Ban<br/>
				Nutzen von gehackten Gegenständen die durch Andere<br/>
				gespawnt wurden -> Kick bzw. Tot.<br/>
				Wer von Hackern Geld annimmt riskiert eine<br/>
				Datenbank-Löschung.<br/>
				Nutzen von Cheats -> Perm. Ban<br/>
				Bugs ausnutzen ->Perm. Ban<br/>
				Exploits nutzen -> Perm. Ban<br/>
				Duplizieren -> Perm. Ban<br/>
				Glitchen -> 1 Std. Ban<br/>
				Combatlog (Ausloggen um einer Strafe oder dem Tod zu<br/>
				entgehen)-> 1 Std. Ban<br/>
				Ghosten (Sich neu einloggen um wo anders zu spawnen)<br/>
				-> 1 Std. Ban<br/>
				Vehicle Kills (Wer sein Fahrzeug mehrfach als Waffe<br/>
				missbraucht um gezielt zu töten) -> 1 Std. Ban<br/>
				Exzessives Missachten der oberen Regeln kann auch zu<br/>
				einem permanenten Ban führen.<br/>
				<br/>
				
				"
		]
	];
	
	player createDiaryRecord["netiquette",
		[
			"Netiquette:",
				"
					<br/>
					Auf diesem Server herrscht ein freundliches miteinander<br/>
					unter allen Spielern.<br/>
					Respektiert andere Spieler und pflegt einen vernünftigen<br/>
					Umgangston.<br/>
					Keine Beleidigungen die über das RPG hinausgehen.<br/>
					Kein Sprechen im Side Chat, kein Spam im Chat.<br/>
					Kein trollen anderer Spieler.<br/>
					Sollten die oben genannten Regeln nicht befolgt werden<br/>
					so kann dies mit einem Kick oder bei Wiederholungen und<br/>
					Extremfällen mit einem Ban bestraft werden.<br/>
				"
		]
	];
					
	
//	player createDiaryRecord ["rpgrules",
//		[
//			"Spender:", 
//				"
//				<br/>
//				Das Weitergeben von Waffen bzw. das Ausrüsten von<br/>
//				anderen Spielern mit Hilfe des Supportshop<br/> 
//				ist nicht erlaubt.<br/> 
//				Die gemeinsame Nutzung von Fahrzeugen hingegen ist<br/>
//				natürlich gestattet sofern es nicht übertrieben wird.<br/><br/>
//				Ein Verstoß kann den Verlust des Spenderlevels nach<br/>
//				sich ziehen.<br/>
//				"
//		]
//	];
	
	
	player createDiaryRecord ["rpgrules",
		[
			"Kamikaze:", 
				"
				<br/>
				Das absichtliche Rammen von Fahrzeugen oder Häusern<br/>
				mit der Absicht diese zu zerstören ist nicht erlaubt<br/>
				und kann mit bis zu einem 24 Stunden Ban<br/>
				bestraft werden.<br/> 
				Zudem gilt auch das absichtliche Crashen von Fahrzeugen<br/>
				als Kamikaze.<br/>
				"
		]
	];
	
	player createDiaryRecord ["rpgrules",
		[
			"Respawn Regel:", 
				"
				<br/>
				Wenn ein Charakter neu spawnt, so gilt er für die Polizei<br/>
				als unschuldig.<br/>
				Ausnahme hierbei besteht, wenn sich ein Spieler,<br/>
				nachdem er von der Polizei getötet wurde, wieder zu<br/>
				seiner Leiche begibt oder einfach respawn drückt.<br/>
				"
		]
	];
	
	player createDiaryRecord ["rpgrules",
		[
			"30 Minuten Regel:", 
				"
				<br/>
				Auf der gesamten Karte darf nach dem Tod durch<br/>
				Schusswechsel der Sterbeort in einem Umkreis<br/>
				von 2km, 30 Minuten nicht mehr betreten werden,<br/>
				um ein Rollenspiel zu ermöglichen.<br/>
				Dies gilt für Polizisten und Zivilisten!<br/>
				Einzige Ausnahme ist Kavala, hier dürfen Polizisten<br/>
				jederzeit neu spawnen.<br/><br/> 
				Bei nicht befolgen erfolgt ein 30 Minuten Ban vom Server.<br/>
				"
		]
	];
	
	player createDiaryRecord ["rpgrules",
		[
			"Besondere Gebiete:", 
				"
				<br/>
				Folgende Gebiete auf der Karte gelten als besonders in<br/>
				denen Ausnahmeregelungen gelten:<br/><br/>

				Rotmarkierte Gebiete (Drogenpunkte, Rebellenaußenposten)<br/>
				Blaumarkierte Gebiete (Polizeiposten)<br/>
				Lilamarkierte Gebiete (Staatsgefängnis, Zentralbank)<br/><br/>

				Die Polizei hat das Recht in diesen Gebieten jeden<br/>
				Zivilisten ohne Aufforderung festzunehmen<br/>
				und zu durchsuchen, da hier dringender<br/>
				Tatverdacht besteht.<br/>
				Diese Punkte dürfen nur gestürmt werden. Das bedeutet,<br/>
				dass diese Gebiete nur alle 30 Minuten von der<br/>
				gegnerischen Partei angegriffen/betreten werden dürfen.<br/>
				Wer sich länger als nötig (warten max. 5 Minuten)<br/>
				an diesen Punkten aufhält, campt.<br/>
				Wer von der Polizei verfolgt wird darf sich<br/>
				keinem Rebellenaußenposten auf weniger<br/>
				als 2km nähern.<br/>
				"
		]
	];
	
	player createDiaryRecord ["rpgrules",
		[
			"Savezones:", 
				"
				<br/>
				Als Safezones gelten im Allgemeinen alle<br/>
				NPCs in einem Radius von 10m, in diesem Radius<br/>
				ist kein PvP erlaubt und wird als RDM gewertet.<br/>
				Darunter fällt das beschießen, erschießen oder<br/>
				umschlagen von anderen Spielern in oder aus dem<br/>
				Radius. Das Verstecken und Campen in diesen<br/>
				Radien ist ebenfalls nicht erlaubt. Mit NPCs<br/>
				sind alle Händler, Veredler, Garagen etc. gemeint.
				<br/>
				"
		]
	];
	
	player createDiaryRecord ["rpgrules",
		[
			"RDM (Random Deathmatch):", 
				"
				<br/>
				Das wahllose/grundlose Töten von Spielern, vor allem<br/>
				mit Fahrzeugen ist streng verboten und wird<br/>
				mit einem Kick bzw. Ban bestraft.<br/> 
				Für das Töten andere Spieler ist immer ein<br/>
				Rollenspielgrund nötig. Sei es ein Überfall,<br/>
				Selbstverteidigung, Rebellion oder ähnliches.<br/><br/>
				Wer unbewaffnete Spieler ohne Vorwarnung erschießt<br/>
				verstößt gegen die RDM Regel.<br/>
				Man kann die Personen wegeschicken, notfalls mit<br/>
				Warnschüssen, aber sie muss gewarnt werden.<br/>
				Verschone das Leben anderer, wenn du kannst!<br/>
				Die RDM-Regel gilt auch in Bezug auf die Polizei, denn<br/>
				diese darf auch nicht ohne<br/>
				Rollenspiel (Ansage) getötet werden.<br/><br/>

				Töten 5 Minuten vor(Grundlos da eh gleich restart) und<br/>
				5 Minuten nach (Spawnkill) dem Server Neustart<br/>
				kann als RDM ausgelegt werden. <br/><br/>
				MERKEREGEL: Wer anderen Spielern keine Chance auf eine<br/>
				Reaktion gibt begeht RDM!<br/>

				"
		]
	];
	
	player createDiaryRecord ["basiclaw",
		[
			"§6 Schadenswiedergutmachung", 
				"
				<br/>
				Die Administratoren oder die Polizei sind nicht dazu<br/>
				verpflichtet Werte die durch andere Spieler verloren<br/>
				gegangen sind zu entschädigen. In besonderen<br/>
				Härtefällen oder Serverregel Verstößen wird man<br/>
				eine Lösung finden.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["basiclaw",
		[
			"§5 Selbstverteidigungs Recht", 
				"
				<br/>
				Jeder Burger hat das Recht sich selbst zu<br/>
				verteidigen, siehe StGB Notwehr.<br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["basiclaw",
		[
			"§4 Recht auf Verwirklichung", 
				"
				<br/>
				Jeder Spieler hat das Recht das Rollenspiel auf<br/>
				seine Weise zu nutzen und sich darin selbst zu<br/>
				verwirklichen. Sei es als Geschäftsmann,<br/>
				Rebell oder Gauner.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["basiclaw",
		[
			"§3 Recht auf ein Bußgeld", 
				"
				<br/>
				Jeder Burger bekommt 3-mal die Chance sein Bußgeld<br/>
				zu bezahlen, wenn der 3. Aufforderung nicht<br/>
				nachgekommen wird, folgt eine Inhaftierung.<br/>
				"
		]
	];
	
	player createDiaryRecord ["basiclaw",
		[
			"§2 Recht auf faire Behandlung", 
				"
				<br/>
				Jeder Bürger hat das Recht auf eine faire<br/>
				Behandlung nach den Gesetzen und Regeln auf<br/>
				diesem Server. Die Gesetze und Regeln gelten<br/>
				für Zivilsten und Polizisten.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["basiclaw",
		[
			"§1 Menschenwürde", 
				"
				<br/>
				Die Würde des Menschen ist unantastbar.<br/>
				Sie zu achten und zu schützen ist Verpflichtung<br/>
				aller staatlichen Gewalt.<br/>
				"
		]
	];
	
	player createDiaryRecord ["weaponlaw",
		[
			"§3 Führungsverbot v. Waffen", 
				"
				<br/>
				(1) Es ist verboten Waffen in der<br/>
				Öffentlichkeit/Städten führen. Auch nicht<br/>
				gesenkt. Schusswaffen sind stets im Rucksack<br/>
				zu transportieren.<br/>
				(2) Wer sich mit einer gezogenen Schusswaffe<br/>
				in der Öffentlichkeit/Städten aufhält wird mit<br/>
				einer Geldbuße von bis 5.000 bestraft.<br/>
				(3) Außerhalb der Öffentlichkeit ist die<br/>
				Schusswaffe stets gesenkt zu halten,<br/>
				andernfalls kann dies als Androhung von<br/>
				Gewalt gesehen werden.<br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["weaponlaw",
		[
			"§2 Erlaubte Waffen", 
				"
				<br/>
				(1) Folgende Waffen sind für Jagd- und Sportzwecke<br/>
				zugelassen und im Waffenladen erhältlich.<br/><br/>
				P07<br/>
				Rook 40<br/>
				ACPC2<br/>
				PDW<br/><br/>
				(2) Alle anderen Schusswaffen oder Explosivstoffe<br/>
				sind nicht zulässig.<br/>
				(3) Wer im Besitz einer verbotenen Schusswaffe<br/>
				oder eines Explosivstoffes ist wird mit einer<br/>
				Geldbuße von $30.000 bestraft.<br/>
				Bei Polizeiwaffen oder Granaten erhöht sich<br/>
				das Bußgeld auf $50.000.<br/>
				"
		]
	];
	
	player createDiaryRecord ["weaponlaw",
		[
			"§1 Besitz von Schusswaffen", 
				"
				<br/>
				(1) Für den Erwerb und den Besitz von Schusswaffen<br/>
				ist eine Waffenlizenz erforderlich.<br/>
				(2) Die Waffenlizenz wird automatisch entzogen,<br/>
				wenn man einen Spieler tötet.<br/>
				(3) Wer ohne eine Waffenlizenz in Besitz einer<br/>
				Legalen Schusswaffe ist, wird mit einer Geldbuße<br/>
				von $20.000 bestraft und die Waffe wird sichergestellt.
				<br/>
				"
		]
	];
	
	player createDiaryRecord ["naturelaw",
		[
			"§4 Besitz", 
				"
				<br/>
				Der Besitz und Handel mit Produkten aus<br/>
				besonders geschützten Arten ist streng verboten<br/>
				und wird mit einer Geldbuße von einem Drittel<br/>
				(Abgerundet) des gesamten Warenwerts<br/>
				(Rucksack+Fahrzeuge) bestraft. Die Produkte<br/>
				werden sichergestellt.<br/>
				"
		]
	];
	
		player createDiaryRecord ["naturelaw",
		[
			"§3 Wilderei", 
				"
				<br/>
				Es ist verboten wild lebenden Tieren der<br/>
				besonders geschützten Arten nachzustellen,<br/>
				sie zu fangen, zu verletzen oder zu töten<br/>
				oder ihre Entwicklungsformen aus der Natur<br/>
				zu entnehmen, zu beschädigen oder zu zerstören.<br/>
				Wer mit einer für die Jagd geeigneten Waffe in<br/>
				Naturschutzgebieten gefasst wird, wird mit einer<br/>
				Geldbuße von $15.000 für versuchte Wilderei<br/>
				bestraft. Zudem wird die Waffe sichergestellt.<br/>
				"
		]
	];
	
	player createDiaryRecord ["naturelaw",
		[
			"§2 Bes. geschützte Arten", 
				"
				<br/>
				Folgende Arten gelten nach dem Washingtoner<br/>
				Artenschutzübereinkommen als besonders geschützt:<br/>
				Alle Meeresschildkröten, darunter auch die<br/>
				gemeine Suppenschildkröte (Chelonia mydas).<br/>
				"
		]
	];
	

	
	player createDiaryRecord ["naturelaw",
		[
			"§1 Betretungsverbot", 
				"
				<br/>
				In den Naturschutzgebieten von Altis gilt<br/>
				ein allgemeines Betretungsverbot um die<br/>
				dort lebende Tier- und Pflanzenwelt zu schützen.<br/>
				Das Betreten, Durchqueren, Schwimmen oder Ankern<br/>
				in diesen Gebieten ist verboten und wird mit<br/>
				einer Geldbuße von bis zu $10.000 geahndet.<br/>
				"
		]
	];
	
	player createDiaryRecord ["druglaw",
		[
			"§5 Konsum", 
				"
				<br/>
				Der Konsum ist Legal. Das Teilnehmen<br/>
				am Straßenverkehr als Fußgänger oder<br/>
				Fahrzeugführer ist jedoch verboten und<br/>
				wird mit einer Geldbuße von bis zu $20.000<br/>
				geahndet. Das Fahrzeug wird sichergestellt.<br/>
				"
		]
	];
	
		player createDiaryRecord ["druglaw",
		[
			"§4 Handel", 
				"
				<br/>
				Wer durch die Befragung eines<br/>
				Drogenhändlers mit Drogenhandel in<br/>
				Verbindung gebracht wird, wird unabhängig<br/>
				von Betäubungsmittelart und Menge mit<br/>
				einer Geldbuße von $30.000 bestraft.<br/>
				"
		]
	];
	
	
	
	
	player createDiaryRecord ["druglaw",
		[
			"§3 Besitz", 
				"
				<br/>
				Wer Betäubungsmitteln nach §1 BtmG<br/>
				besitzt oder im Fahrzeug mitführt wird<br/>
				mit einer Geldbuße von einem Drittel<br/>
				des gesamten mitgeführten Warenwertes<br/>
				(Fahrzeuge+Rucksack) bestraft.<br/>
				(Es wird abgerundet.) Die Betäubungsmittel<br/>
				werden sichergestellt.<br/>
				"
		]
	];
	
	player createDiaryRecord ["druglaw",
		[
			"§2 Eigenbedarf", 
				"
				<br/>
				Es gibt keinen Eigenbedarf, unabhängig<br/>
				von der Menge der Betäubungsmittel.<br/>
				"
		]
	];
	
	player createDiaryRecord ["druglaw",
		[
			"§1 Betäubungsmittel", 
				"
				<br/>
				Betäubungsmittel im Sinne dieses Gesetzes<br/>
				sind die hier aufgeführten Stoffe und<br/>
				Zubereitungen.<br/><br/>
				Cannabis<br/>
				Kokain<br/>
				Heroin<br/>
				"
		]
	];
	
	player createDiaryRecord ["airlaw",
		[
			"§4 Landen", 
				"
				<br/>
				(1) Das Landen ist nur auf dafür vorgesehenen<br/>
				Einrichtungen erlaubt oder auf nicht bebauten<br/>
				Grundstücken und mindestens 500m entfernt von<br/>
				bewohntem Gebiet.<br/>
				(2) Wer ordnungswidrig Landet wird mit einer<br/>
				Geldbuße von bis zu $10.000 bestraft.<br/>
				(3) Der Versuch ist strafbar und wird mit<br/>
				$10.000 bestraft.<br/>
				(4) In Kavala darf mit Genehmigungen eines<br/>
				Polizisten gegen eine Landegebühr von 5000$ auf<br/>
				dem Krankenhausdach	gelandet werden. Die Landung<br/>
				muss auf direktem Wege und in angemessener Zeit<br/>
				geschehen. Die maximale Parkdauer beträgt<br/>
				10 Minuten zum be- und entladen.<br/>
				"
		]
	];
	
		player createDiaryRecord ["airlaw",
		[
			"§3 Flugverbotszonen", 
				"
				<br/>
				(1) Staatliche Einrichtungen wie die<br/>
				Zentralbank, Polizeistationen und das<br/>
				Staatsgefängnis gelten als Flugverbotszonen.<br/>
				(2) Wer in einer Flugverbotszone fliegt/schwebt<br/>
				oder gar Landet handelt Ordnungswidrig und wird<br/>
				mit einer Geldbuße von bis zu $50.000 bestraft.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["airlaw",
		[
			"§2 Flugbeschränkungsgebiete", 
				"
				<br/>
				(1) Wohngebiete gelten aus Lärmschutzgründen<br/>
				und zur Unfallvermeidung als Beschränkungsgebiete.<br/>
				Die nur in einer Höhe von mindestens 500 Metern<br/>
				überflogen werden dürfen.<br/>
				Ausnahme der Landeanflug in Kavala mit einer<br/>
				Genehmigung.<br/>
				2)Wer in einen beschränkten Luftraum tiefer<br/>
				als 500m fliegt/schwebt, handelt Ordnungswidrig<br/>
				und wird mit einer Geldbuße von bis zu<br/>
				$20.000 bestraft. Ausnahme ist hier der Anflug<br/>
				zum Krankenhaus in Kavala mit einer Genehmigung.<br/>
				"
		]
	];
	

	player createDiaryRecord ["airlaw",
		[
			"§1 Beleuchtung", 
				"
				<br/>
				Während der Dämmerung, bei Dunkelheit<br/>
				oder wenn die Sichtverhältnisse es sonst<br/>
				erfordern, sind die vorgeschriebenen<br/>
				Beleuchtungseinrichtungen zu benutzen.<br/>
				Wer ohne Kollisionsleuchten fliegt wird<br/>
				mit einem Bußgeld von bis zu $10.000 bestraft.<br/>
				"
		]
	];
		player createDiaryRecord ["roadlaw",
		[
			"§10 Schutzhelme", 
				"
				<br/>
				(1) Wer Krafträder oder offene drei- oder <br/>
				mehrrädrige Kraftfahrzeuge mit einer bau-<br/>
				artbedingten Höchstgeschwindigkeit von über<br/>
				20 km/h führt sowie auf oder in ihnen <br/>
				mitfährt, muss während der Fahrt einen <br/>
				geeigneten Schutzhelm tragen.<br/>
				Wer dem nicht folgt handelt Ordnungswidrig<br/>
				und wird mit einem Bußgeld von $500 bestraft.<br/>
				
				"
		]
	];
	
	player createDiaryRecord ["roadlaw",
		[
			"§11 Transport von Fahrzeugen", 
				"
				<br/>
                (1) Das Verladen und Transportieren von Fahrzeugen ist nur mit der Genehmigung des Fahrzeughalters gestattet.<br/>
                (2) Wird das Fahrzeug ohne Zustimmung des Halters verladen, wird dies gemäß §2 StGB, entsprechend geahndet.<br/>
                (3) Der Transport von unzulässigen Fahrzeugen, gemäß §8 StVO, ist nicht gestattet und wird mit einem Bußgeld von bis zu 30.000$ bestraft.<br/>
                (4) Das wiederholte Verladen und Transportieren von Fahrzeugen ohne Zustimmung des Halters ist verboten und wird als Trolling angesehen (siehe Serverregeln).<br/>
				
				"
		]
	];
	
		player createDiaryRecord ["roadlaw",
		[
			"§9 Fußgänger", 
				"
				<br/>
				(1) Wer sich in der Absicht getötet zu<br/>
				werden anderen Fahrzeugen in den Weg wirft,<br/>
				begeht Versicherungsbetrug und wird mit einer<br/>
				Geldbuße von bis zu $10.000 bestraft. Bei<br/>
				Wiederholungen liegt der Fall des „Trollen“<br/>
				nahe, siehe Serverregeln.<br/>
				(2) Wer in ein fremdes Fahrzeug zu steigt mit<br/>
				der Absicht den Führer des Fahrzeuges im<br/>
				Spielfluss zu stören, begeht „Trollen“,<br/>
				siehe Serverregeln.<br/>
				"
		]
	];
	
		player createDiaryRecord ["roadlaw",
		[
			"§8 Unzulässige Fahrzeuge", 
				"
				<br/>
				Folgende Fahrzeuge sind für den Straßenverkehr<br/>
				nicht zulässig und werden von der Polizei<br/>
				beschlagnahmt.<br/><br/>

				Bewaffneter Offroader<br/>
				Bewaffneter Strider <br/><br/>
				
				Bei einem Missbrauch dieser Fahrzeuge bzw. bei<br/>
				Verwendung gegen Zivilisten oder Polizisten<br/>
				sind diese Fahrzeuge auch zu zerstören.<br/>
				"
		]
	];
	
		player createDiaryRecord ["roadlaw",
		[
			"§7 Fahrerlaubnis", 
				"
				<br/>
				(1) Wer andere Spieler mit einem Fahrzeug tötet,<br/>
				verliert automatisch seine Fahrlizenz.<br/>
				(2) Wer ein Fahrzeug ohne die erforderliche<br/>
				Fahrlizenz führt, wird mit einer Geldbuße von<br/>
				bis zu $10.000 bestraft und riskiert die<br/>
				Beschlagnahmung seines Fahrzeuges, sollte keine<br/>
				Möglichkeit einer schnellen Wiederbeschaffung der<br/>
				Lizenz vorhanden sein.<br/>
				"
		]
	];

		player createDiaryRecord ["roadlaw",
		[
			"§6 Fahrerflucht", 
				"
				<br/>
				(1) Wer sich von einem Unfallort entfernt ohne<br/>
				mit der Polizei gesprochen zu haben,<br/>
				begeht Fahrerflucht.<br/>
				(2) Bei Sachschäden ist eine Geldbuße bis zu<br/>
				$2.000 zu zahlen.<br/>
				(3) Bei Unfällen mit Personenschaden ist eine<br/>
				Geldbuße von $10.000 zu entrichten.<br/>
				"
		]
	];
	
	
	
	
	player createDiaryRecord ["roadlaw",
		[
			"§5 Unfall", 
				"
				<br/>
				(1) Ein Unfall liegt dann vor, wenn ein anderer<br/>
				Spieler/ein anderes Fahrzeug mit dem eigenen Fahrzeug<br/>
				unabsichtlich verletzt/beschädigt wird.<br/>
				(2) Ein Unfall ist unverzüglich der Polizei zu melden,<br/>
				ansonsten begeht der Verursacher nach §6 abs1 StVO<br/>
				Fahrerflucht.<br/>
				(3) Bei Unfällen mit Sachschäden ist der entstandene<br/>
				Schaden vom Verursacher zu ersetzen.<br/>
				(4) Bei Unfällen mit Personenschaden ist der andere<br/>
				Spieler zu entschädigen und im Fall zu verarzten.<br/>
				Zuzüglich ist eine Geldbuße in Höhe von $1.000<br/>
				zu entrichten.<br/>
				(5) Wer mit seinem Fahrzeug mehr als 3 Personen<br/>
				verletzt, begeht RDM und wird dementsprechend<br/>
				bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["roadlaw",
		[
			"§4 Halten und Parken", 
				"
				<br/>
				(1) Das Halten ist unzulässig an engen und an<br/>
				unübersichtlichen Straßenstellen und im Bereich	von<br/>
				scharfen Kurven. Wer dagegen verstößt begeht eine<br/>
				Ordnungswidrigkeit mit einer Geldbuße von bis zu $1.000.<br/>
				(2) Wer sein Fahrzeug verlässt oder länger als drei<br/>
				Minuten hält, der parkt.<br/>
				(3) Das Parken ist nur zulässig auf Parkplätzen,<br/>
				ein Verstoß wird mit bis zu $500 geahndet.<br/>
				Ordnungswidrig abgestellte Fahrzeuge werden<br/>
				beschlagnahmt, wenn der Halter sich nicht meldet.<br/>
				Wenn das Fahrzeug den Verkehr behindert wird es<br/>
				sofort beschlagnahmt.<br/>
				(4) Fahrzeuge die so stark beschädigt sind, dass<br/>
				eine Weiterfahrt nicht möglich ist, werden beschlagnahmt.<br/>
				"
		]
	];

	
player createDiaryRecord ["roadlaw",
		[
			"§3 Beleuchtung", 
				"
				<br/>
				Während der Dämmerung, bei Dunkelheit oder wenn<br/>
				die Sichtverhältnisse es sonst erfordern, sind die<br/>
				vorgeschriebenen Beleuchtungseinrichtungen zu<br/>
				benutzen. Wer ohne Licht fährt wird mit einem<br/>
				Bußgeld von bis zu $1.000 bestraft. <br/>
				"
		]
	];
	
	player createDiaryRecord ["roadlaw",
		[
			"§2 Geschwindigkeit", 
				"
				<br/>
				Wer ein Fahrzeug führt, darf nur so schnell fahren,<br/>
				dass das Fahrzeug ständig beherrscht wird. Die<br/>
				Geschwindigkeit ist insbesondere den Straßen-,<br/>
				Verkehrs-, Sicht- und Wetterverhältnissen, sowie<br/>
				den persönlichen Fähigkeiten und den Eigenschaften<br/>
				von Fahrzeug und Ladung anzupassen. Ohne triftigen<br/>
				Grund dürfen Kraftfahrzeuge nicht so langsam fahren,<br/>
				dass sie den Verkehrsfluss behindern. Die zulässige<br/>
				Höchstgeschwindigkeit beträgt auch unter günstigsten<br/>
				Umständen<br/><br/>

				(1) innerhalb geschlossener Ortschaften für alle<br/>
				Kraftfahrzeuge 50 km/h.<br/>
				(2) außerhalb geschlossener Ortschaften 120km/h.<br/><br/>

				Geschwindigkeitsübertretung von 10-20km/h wird mit<br/>
				bis zu $2.000, aber nicht weniger als $500,<br/>
				Geschwindigkeitsübertretungen über 20km/h werden<br/>
				mit bis zu $5.000 bestraft.<br/>
				"
		]
	];

	player createDiaryRecord ["roadlaw",
		[
			"§1 Rechtsfahrgebot", 
				"
				<br/>
				Das Rechtsfahrgebot besagt, dass auf den<br/>
				Straßen von Altis möglichst weit rechts<br/>
				gefahren werden soll. Ausnahmen gelten hier<br/>
				beim Überholvorgang oder ausweichen von<br/>
				Hindernissen. Wer grundlos die linke Fahrspur<br/>
				nutzt oder andere Verkehrsteilnehmer behindert<br/>
				wird mit einer Geldbuße von bis zu $1.000 bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§15 Missbrauch von Notrufen", 
				"
				<br/>
				(1) Wer absichtlich oder wissentlich einen<br/>
				Notruf vortäuscht, wird mit einer Geldbuße<br/>
				von bis zu $30.000 bestraft.<br/>
				(2) Wer den Notruf mit unnötigen Nachrichten<br/>
				füllt, um die Polizei zu behindern, wird für<br/>
				Spam gekickt.<br/>
				(3) Wer den Notruf missbraucht wird verwarnt<br/>
				und bei Wiederholung mit einer Geldbuße von<br/>
				bis zu $5.000 bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§14 Uniformverbot", 
				"
				<br/>
				(1) Es ist verboten, öffentlich Uniformen,<br/>
				Uniformteile oder gleichartige Kleidungstücke<br/>
				zu tragen die einen mit einer Rebellengruppierung<br/>
				in Verbindung bringen können. <br/>
				(2) Wer sich mit verbotener Kleidung in der<br/>
				Öffentlichkeit(Städten) aufhält, wird mit einer<br/>
				Geldbuße von bis zu $10.000 und dem Sicherstellen<br/>
				der Kleidung bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§13 Hausfriedensbruch", 
				"
				<br/>
				(1) Wer vorsätzlich oder fahrlässig entgegen<br/>
				einem Verbot der zuständigen Dienststelle<br/>
				eine polizeiliche Einrichtung oder Anlage<br/>
				oder eine Örtlichkeit betritt, die aus<br/>
				Sicherheitsgründen zur Erfüllung dienstlicher<br/>
				Aufgaben der Polizei gesperrt ist, wird mit<br/>
				einer Geldbuße von bis zu $50.000 verwarnt.<br/>
				(2) Wer mehrfach vorsätzlich entgegen einem<br/>
				Verbot an Polizeistellen Fahrzeuge spawnen<br/>
				lässt, wird mit einer Geldstrafe von bis zu<br/>
				$50.000 bestraft und riskiert dabei den<br/>
				Beschuss durch Polizisten.<br/>
				(3) Wer in das Haus oder Garage eines<br/>
				anderen Spieler, widerrechtlich eindringt,<br/>
				oder wer, wenn er ohne Befugnis darin<br/>
				verweilt, auf die Aufforderung des<br/>
				Berechtigten sich nicht entfernt, wird<br/>
				mit Geldstrafe von bis zu $10.000 bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§12 Notwehr", 
				"
				<br/>
				(1) Wer eine Tat begeht, die durch Notwehr<br/>
				geboten ist, handelt nicht rechtswidrig.<br/>
				(2) Notwehr ist die Verteidigung, die<br/>
				erforderlich ist, um einen gegenwärtigen<br/>
				rechtswidrigen Angriff von sich oder<br/>
				einem anderen abzuwenden.<br/>
				(3) Damit der Tatbestand der Notwehr<br/>
				erfüllt ist, muss vor der Tat ein Notruf<br/>
				eingegangen sein und nach der Tat sofort<br/>
				eine Schilderung der Situation an die<br/>
				Polizei erfolgen.<br/>
				"
		]
	];
	
		player createDiaryRecord ["punishment",
		[
			"§11 Gefängnisausbruch", 
				"
				<br/>
				(1) Wer aus dem Gewahrsam des<br/>
				Staatsgefängnisses entweicht begeht<br/>
				einen Gefängnisausbruch und wird mit<br/>
				$100.000 und Freiheitsstrafe bestraft.<br/>
				(2) Wer einen Gefangenen befreit, ihn zum<br/>
				Entweichen verleitet oder dabei	fördert,<br/>
				wird mit $100.000 und Freiheitsstrafe bestraft.<br/>
				(3) Versuch ist strafbar und wird mit<br/>
				$50.000 mit anschließender Inhaftierung bestraft.<br/>
				(4) Wer aus dem Gefängnis durch einen Bug<br/>
				oder Glitch entkommt, kann mit einem<br/>
				perma Ban bestraft werden.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§10 Mord", 
				"
				<br/>
				(1) Wer aus Mordlust, heimtücke<br/>
				oder grausamkeit einen Spieler tötet,<br/>
				begeht RDM.<br/>
				(2) Mörder ist, wer aus Habgier oder<br/>
				aus anderen niedrigen Beweggründen,<br/>
				mit gemeingefährlichen Mitteln (Waffen)<br/>
				oder um eine andere Straftat zu ermöglichen<br/>
				oder zu verdecken, einen Spieler tötet.<br/>
				(3) Mord wird mit $50.000 und anschließender<br/>
				Inhaftierung bestraft.<br/>
				(4) Der Versuch ist strafbar und wird<br/>
				mit $25.000 geahndet.<br/>
				(5) Wer einen Polizisten tötet begeht<br/>
				einen schweren Mord, welcher mit $100.000<br/>
				und Gefängnishaft bestraft wird.<br/>
				(6) Der Versuch eines schweren Mordes<br/>
				wird mit $50.000 Geldstrafe geahndet.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§9 Widerstand gegen Beamte", 
				"
				<br/>
				(1) Nicht folge Leisten von<br/>
				Polizeianweisungen wird mit bis zu<br/>
				$20.000 oder gar Gefängnis bestraft.<br/>
				Unter einer Polizeianweisung ist auch das<br/>
				Anhalten bei Aufforderungen durch die<br/>
				Polizei mittels Polizeisirenen oder bei<br/>
				Polizeihubschraubern die Gegenmaßnahmen<br/>
				zünden zu verstehen.<br/>
				(2) Wer sich dem Zugriff der Polizei entzieht<br/>
				oder versucht zu entziehen, wird mit einer<br/>
				Geldbuße von bis zu $20.000 zusätzlich bestraft.<br/>
				(3) Wer Beamte bei ihren Amtshandlungen oder<br/>
				Tätigkeiten vorsätzlich stört wird mit einer<br/>
				Geldbuße von $1.000 bestraft und vorrübergehen<br/>
				festgenommen, bis zur Beendigung der<br/>
				Amtsverrichtungen.<br/>
				(4) Wer einen Beamten bei der Vornahme<br/>
				einer Diensthandlung mit Gewalt oder durch<br/>
				Drohung mit Gewalt Widerstand leistet oder<br/>
				ihn dabei tätlich angreift, wird mit einer<br/>
				Geldstrafe von bis zu $50.000 bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§8 Beleidigungen", 
				"
				<br/>
				(1) Wer andere Spieler in Rollenspiel<br/>
				Manier beleidigt wird mit einem Bußgeld<br/>
				von bis zu $10.000 bestraft.<br/>
				(2) Wer einen Polizisten in Rollenspiel <br/>
				Manier beleidigt wird mit einem Bußgeld<br/>
				von bis zu $20.000 bestraft.<br/>
				(3) Wer andere Spieler oder Polizisten<br/>
				in irgendeiner anderen Form fernab vom<br/>
				Rollenspiel oder gar persönlich beleidigt<br/>
				verstößt gegen die Serverregeln und wird<br/>
				von einem Admin bestraft.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["punishment",
		[
			"§7 Erregung öff. Ärgernis", 
				"
				<br/>
				(1) Wer in der Öffentlichkeit<br/>
				Exhibitionistische Handlungen durchführt<br/>
				ist, sich seiner Kleidung entledigt erregt<br/>
				ein öffentliches Ärgernis und wird mit einer<br/>
				Geldbuße von $500 bestraft. Ausnahme die<br/>
				Kleidung wurde von der Polizei bzgl.<br/>
				§14 StGB sichergestellt.<br/>
				(2) Wer in der Öffentlichkeit anstößige<br/>
				Handlungen durchführt erregt ein öffentliches<br/>
				Ärgernis und wird mit einer Geldbuße von bis<br/>
				zu $1.000 bestraft.<br/>
				"
		]
	];
	
		player createDiaryRecord ["punishment",
		[
			"§6 Freiheitsberaubung", 
				"
				<br/>
				(1) Wer einen Menschen einsperrt, gefangen<br/>
				nimmt oder auf andere Weise der Freiheit<br/>
				beraubt, wird mit Geldstrafe von bis zu<br/>
				$100.000 oder mit Inhaftierung bestraft.<br/>
				(2) Der Versuch ist strafbar und wird mit<br/>
				bis zu $50.000 bestraft.<br/>
				"
		]
	];
	
	
	player createDiaryRecord ["punishment",
		[
			"§5 Schwerer Raub", 
				"
				<br/>
				(1) Der Überfall auf die Zentralbank von Altis<br/>
				gilt als schwerer Raub.<br/>
				(2) Wer sich während eines Bankraubes auf der<br/>
				Insel der Zentralbank befindet gilt als Bankräuber.<br/>
				(3) Wer einen schweren Raub begeht oder daran<br/>
				beteiligt ist, wird mit einer $100.000 hohen<br/>
				Geld- oder mit einer Haftstrafe belegt.<br/>
				(4) Der Versuch ist strafbar und wird mit<br/>
				$20.000 oder Haftstrafe geahndet. Als Versuch<br/>
				gilt auch wer während eines Bankraubes<br/>
				versucht die Insel der Zentralbank zu betreten<br/>
				oder sich ihr zu nähern.<br/>
				"
		]
	];
	
	
	
	player createDiaryRecord ["punishment",
		[
			"§4 Raub", 
				"
				<br/>
				(1) Wer mit Gewalt gegen eine Person oder unter<br/>
				Anwendung von Drohungen mit gegenwärtiger Gefahr<br/>
				für Leib oder Leben Geld, Fahrzeuge oder<br/>
				Gegenstände einem anderen in der Absicht wegnimmt,<br/>
				die Sachen sich oder einem Dritten rechtswidrig<br/>
				zuzueignen, wird mit einer Geldbuße von bis zu<br/>
				$100.000 bestraft.<br/>
				(2) Der Versuch ist strafbar und wird mit bis<br/>
				zu $50.000 geahndet.<br/>
				"
		]
	];
	

	player createDiaryRecord ["punishment",
		[
			"§3 Bes. schwerer Diebstahl", 
				"
				<br/>
				(1) Ein besonders schwerer Fall von Diebstahl<br/>
				liegt dann vor wenn Polizeifahrzeuge entwendet<br/>
				werden nach §2 Abs. 1. Die Geldbuße beträgt bis<br/>
				zu $200.000, aber nicht weniger als $50.000.<br/>
				(2) Der Versuch ist strafbar und wird mit bis zu<br/>
				$50.000, aber nicht weniger als $10.000 bestraft.<br/>
				"
		]
	];
	
	player createDiaryRecord ["punishment",
		[
			"§2 Schwerer Diebstahl", 
				"
				<br/>
				(1) Wer mit einem Dietrich ein fremdes<br/>
				Fahrzeug öffnet und/oder wer fremde Fahrzeuge<br/>
				in der Absicht besteigt, diese dem Eigentümer<br/>
				zu entwenden begeht Autodiebstahl und wird mit<br/>
				einer Geldbuße von bis zu $100.000 bestraft,<br/>
				je nach Art des Fahrzeuges und ob ein Dietrich<br/>
				verwendet wurde.<br/>
				(2) Der Versuch ist strafbar und wird mit bis<br/>
				zu $20.000 bestraft.<br/>
				"
		]
	];

	player createDiaryRecord ["punishment",
		[
			"§1 Diebstahl", 
				"
				<br/>
				(1) Wer eine fremde Sache einem anderen in<br/>
				der Absicht wegnimmt, die Sache sich oder<br/>
				einem Dritten rechtswidrig zuzueignen, wird<br/>
				mit einer Geldstrafe von $1.000 bestraft. Das<br/>
				Diebesgut wird sichergestellt. Unter Diebstahl<br/>
				versteht man die Entwendung von Gegenständen<br/>
				aus Rucksäcken und Fahrzeuge. Sowie Aneignung<br/>
				von Gegenständen oder Geld auf der Straße.<br/>
				(2) Der Versuch ist strafbar und wir mit<br/>
				$500 geahndet. Ein Versuch liegt in der<br/>
				Regel vor, wenn der Täter anderen in den<br/>
				Rucksack oder Fahrzeuge schaut. Mit einem<br/>
				gezogen Fernglas in der Öffentlichkeit/Stadt,<br/>
				in der Nähe anderer Spieler zu stehen gilt<br/>
				auch als versuchter Diebstahl.<br/>
				"
		]
	];
	
	
	
// Seal Team Sloth Section

	player createDiaryRecord ["sealteamsloth",
		[
			"Teamspeak",
				"
				<br/>
				Unsere Teamspeak3 Adresse:<br/><br/>
				ts3.chaotentrupp.de<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["sealteamsloth",
		[
			"Website/Forums",
				"
				<br/>
				Besucht uns auf unser Homepage<br/><br/>
				http://chaotentrupp.net<br/>
				"
		]
	];
		
//	player createDiaryRecord ["sealteamsloth",
//		[
//			"Spenden",
//				"
//				<br/>
//				Spendet und erhaltet exklusive Waffen und<br/> 
//				Fahrzeuge, sowie ein erhöhtes Gehalt.<br/><br/>
//				Einfach einen Admin anschreiben oder<br/> 
//				besucht unsere Homepage unter<br/><br/>
//				http://chaotentrupp.net<br/><br/>
//				"
//		]
//	];
		
	
	
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Steuerung:",
				"
				<br/>
				Z: Spielermenü öffnen<br/>
				U: Ab- und Aufschließen von Fahrzeugen<br/>
				F: Polizei Sirene<br/>
				T: Fahrzeug Ladung<br/>
				Windows-Taste: Erweitertes Spielermenü<br/>
				"
		]
	];