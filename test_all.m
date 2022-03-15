import matlab.unittest.TestSuite;

folderSuite  = TestSuite.fromFolder('unittests');

results = run(folderSuite)