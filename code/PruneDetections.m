%optional

function fdets = PruneDetections(dets,N)

%PRUNEDETECTIONS Prune the detected regions.
%   Only list the top N regions; that is, the N regions that give the
%   highest score on the detector.

    fdets = sortrows(dets, -5);
    fdets = dets(1:N,:);

end