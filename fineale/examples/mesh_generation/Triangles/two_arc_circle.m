% Uniform mesh of circle..
% The circle circumference consists of two arcs, which are given centers
% slightly offset from the true center of the circle.  The mesh generator
% needs this to make sense of the orientation of the arcs.
h=2.8;
[fens,fes,groups,edge_fes,edge_groups]=targe2_mesher({...
    'curve 1 arc -12 0 12 0 Center 0 -5 rev',...
    'curve 2 arc 12 0 -12 0 Center 0 5 reversed',...
    ['subregion 1  property 1 boundary 1  2 '],...
    ['m-ctl-point constant ' num2str(h)]
    }, 1.0);
drawmesh({fens,fes},'fes','shrink', 0.8);
view(2)
