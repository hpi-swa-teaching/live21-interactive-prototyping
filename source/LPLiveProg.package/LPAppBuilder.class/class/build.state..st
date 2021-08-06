as yet unclassified
build: rebuild state: s1

	^ LPAppBuilder
		instanceComponent: (LPComponentTemplate new
			declarations: [:s2 |
				s2 at: #'670c2977-f8a8-4e97-ac09-6b88c09ad304' put: [
					s2 at: #count.
					s2 at: #abc.
					rebuild value].
				s2 at: #'44da7d1e-903a-4151-b746-740a9b83d339' put: (LPComponentTemplate new
					declarations: [:s3 | ];
					selectors: [:s3 | ];
					properties: {#iAmAProp};
					view: [:s3 |
						SBButton new
							label: 'ButtonLabel';
							onClick: []];
					yourself)];
			selectors: [:s2 | ];
			properties: {#count. #abc};
			view: [:s2 |
				LPAppBuilder
					instanceComponent: (s2 at: #'44da7d1e-903a-4151-b746-740a9b83d339')
					from: s2
					id: #'12301689-76af-4298-be0e-e47b22a63c24'
					with: [:s3 | s3 at: #iAmAProp put: 'IAmAValue']];
			yourself)
		from: s1
		id: #'e41fbe73-ce46-4778-a3bd-d12397325290'
		with: [:s2 |
			s2
				at: #count ifAbsentPut: [nil];
				at: #abc ifAbsentPut: [nil]]