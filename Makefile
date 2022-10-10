# FLUTTER_CMD=flutter
FLUTTER_CMD=./.fvm/flutter_sdk/bin/flutter


code_review:
	${FLUTTER_CMD} analyze && /
	${FLUTTER_CMD} test
