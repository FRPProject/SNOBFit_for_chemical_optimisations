% function f = hm3(SNOB)
% Hartman3 function
function f = hm3(SNOB)
	
	x = SNOB.next;
	n = size(x,1);

	a = [3.0d0,  0.1d0,  3.0d0,  0.1d0;
	     10.0d0, 10.0d0, 10.0d0, 10.0d0;
	     30.0d0, 35.0d0, 30.0d0, 35.0d0];
	p = [ 0.36890d0, 0.46990d0, 0.10910d0, 0.03815d0;
	      0.11700d0, 0.43870d0, 0.87320d0, 0.57430d0;
	      0.26730d0, 0.74700d0, 0.55470d0, 0.88280d0];
	c = [1.0d0, 1.2d0, 3.0d0, 3.2d0];
	for i=1:n
		d(i,:) = sum(a.*(repmat(x(i,:)',1,4) - p).^2);
	end
	f = -sum(repmat(c,n,1).*exp(-d),2); 

end