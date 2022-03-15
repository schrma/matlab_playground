% testCase = class_regressionTest;
% results = testCase.run

classdef class_regressionTest < matlab.unittest.TestCase
    %CLASS_REGRESSIONTEST Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (TestParameter)
        number = {1,2, 3, 4, 5};
    end
    
    methods (Test)
        function test_linear_regression(testCase)
            x = [0.8; 1.4; 2.7; 3.8; 4.8; 5];
            y = [0.69; 1.0; 2.02; 2.39; 2.34; 2.83];
            phi = regression_linear(x, y)
            testCase.verifyEqual(phi(1), 0.4459, "AbsTol", 0.01)
        end

        function test_multi_regression(testCase)
            x = [0.8; 1.4; 2.7; 3.8; 4.8; 5];
            y = [0.69; 1.0; 2.02; 2.39; 2.34; 2.83];
            N = length(x);
            X = [ones(N,1), x];
            Y = y;
            phi_mult = least_minimum_square(X,Y)
            testCase.verifyEqual(phi_mult(1), 0.4459, "AbsTol", 0.01)
        end

        function loop_number(testCase, number)
            my_list = [1, 2, 3, 4, 5]
            assert(~isempty(find(my_list(:) == number)))
        end
    end
end
