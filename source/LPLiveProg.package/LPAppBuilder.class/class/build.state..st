as yet unclassified
build: rebuild state: s1

	^ LPAppBuilder
		instanceComponent: (LPComponentTemplate new
			declarations: [:s2 |
				s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97' put: (LPComponentTemplate new
					declarations: [:s3 |
						s3 at: #'f6fdf126-6601-4eaa-86e2-4c0ab1e760d0' put: [
							s3 at: #count put: (s3 at: #count) + 1.
							s3 at: #superCount put: (s3 at: #superCount) + 1.
							rebuild value]];
					selectors: [:s3 |
						s3
							at: #'e802b2ff-98c2-46a4-afd1-3a1464855595'
							put: ['d{1} ({2})' format: {s3 at: #faces. s3 at: #count}]];
					properties: {#faces. #count};
					view: [:s3 |
						{
							SBButton new
								label: (s3 at: #'e802b2ff-98c2-46a4-afd1-3a1464855595') value;
								onClick: (s3 at: #'f6fdf126-6601-4eaa-86e2-4c0ab1e760d0')}];
					yourself)];
			selectors: [:s2 |
				s2
					at: #'5cefdd6c-cc30-4e15-909b-62625051603c'
					put: ['count everything: {1}' format: {s2 at: #superCount}]];
			properties: {#superCount. #abc};
			view: [:s2 |
				{
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'a8b95703-7fe6-4b2b-bdff-229b076fee3f'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 6.
							s3 at: #count ifAbsentPut: 0].
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'20fee8f4-d3c8-4858-b388-187e74356eb0'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 10.
							s3 at: #count ifAbsentPut: 0].
					LPAppBuilder
						instanceComponent: (s2 at: #'0c575b40-09b2-47cc-abd6-34342379ee97')
						from: s2
						id: #'52b72633-f0c6-4bab-91f8-2ca3d94f142e'
						with: [:s3 |
							s3 at: #faces ifAbsentPut: 20.
							s3 at: #count ifAbsentPut: 0].
					SBStringMorph new contents: (s2 at: #'5cefdd6c-cc30-4e15-909b-62625051603c') value}];
			yourself)
		from: s1
		id: #'b62dbf70-71f5-4321-b424-57be79dda11f'
		with: [:s2 |
			s2
				at: #superCount ifAbsentPut: ['0'];
				at: #abc ifAbsentPut: ['''test''']]