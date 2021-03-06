function idat = inspect_integration_points(self, ...
        geom, un1, un, dt, dT, fe_list, context,...
        inspector, idat)
% Inspect the integration point quantities.
%
%     function idat = inspect_integration_points(self, ...
%             geom, u, dT, fe_list, context, inspector, idat)
%
% Input arguments
%    geom - reference geometry field
%    un1      - displacement field at the end of time step t_n+1; This is
%               the linear displacement field for linear problems
%    un       - displacement field at the end of time step t_n; This field
%               is ignored for linear problems
%    dt       - time step from  t_n to t_n+1; needed only by some
%                materials
%    dT - temperature difference field
%    fe_list - indexes of the finite elements that are to be inspected:
%          The fes to be included are: fes(fe_list).
%    context    - structure: see the update() method of the material.
%    inspector - function handle or in-line function with the signature
%             idat =inspector(idat, out, xyz, u, pc),
%        where
%         idat - a structure or an array that the inspector may
%                use to maintain some state, for instance minimum or
%                maximum of stress, out is the output  of the update()
%                method, xyz is the location of the integration point
%                in the *reference* configuration, and u the displacement 
%                of the integration point. The argument pc are the
%                parametric coordinates of the quadrature point.
% Output arguments
%     idat - see the description of the input argument
%


error('Base class does not implement this behaviour!');
end
