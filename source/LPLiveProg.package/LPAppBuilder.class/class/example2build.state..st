as yet unclassified
example2build: rebuild state: s1

	^ LPAppBuilder
		instanceComponent: (LPComponentTemplate new
			declarations: [:s2 |
				s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97' put: (LPComponentTemplate new
					declarations: [:s3 |
						s3 at: #'e917b284-fb08-4779-806f-06234913b4ad' put: [
							s3 at: #count put: (s3 at: #count) + 1.
							s3 at: #superCount put: (s3 at: #superCount) + 1.
							rebuild value]];
					selectors: [:s3 |
						s3
							at: #'e2380c4a-ef3f-4722-94c7-4c85307afcd5'
							put: ['d{1} ({2})' format: {s3 at: #faces. s3 at: #count}]];
					properties: {#faces. #count};
					view: [:s3 |
						SBButton new
							label: (s3 at: #'e2380c4a-ef3f-4722-94c7-4c85307afcd5') value;
							onClick: (s3 at: #'e917b284-fb08-4779-806f-06234913b4ad')];
					yourself)];
			selectors: [:s2 |
				s2
					at: #'70d28b48-dcb4-4e8b-b044-4396ea4355e6'
					put: ['count everything: {1}' format: {s2 at: #superCount}]];
			properties: {#superCount. #abc};
			view: [:s2 |
				{
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'a7024a62-a413-4eda-8cbf-3a9fd1eb8baf'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 6.
							s3 at: #count ifAbsentPut: [0]].
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'e17b5b8a-3337-41ec-9df5-9f5245068b54'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 10.
							s3 at: #count ifAbsentPut: [0]].
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'892a982e-4c17-4aa8-b4d7-8fe00ce41ed8'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 20.
							s3 at: #count ifAbsentPut: [0]].
					SBStringMorph new contents: (s2 at: #'70d28b48-dcb4-4e8b-b044-4396ea4355e6') value}];
			yourself)
		from: s1
		id: #'c6dfce69-8b85-4c1f-9ef9-69bf864f075c'
		with: [:s2 |
			s2
				at: #superCount ifAbsentPut: [0];
				at: #abc ifAbsentPut: nil]