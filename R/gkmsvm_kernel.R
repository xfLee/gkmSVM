
gkmsvm_kernel <- function( posfile, 
                           negfile,
                           outfile,
                           L=10, 
                           K=6, 
                           maxnmm=3, 
                           maxseqlen=10000,
                           maxnumseq=1000000, 
                           useTgkm=1,
                           alg=2, 
                           addRC=TRUE, 
                           usePseudocnt=FALSE, 
                           wildcardLambda=1.0, 
                           wildcardMismatchM=2,
                           alphabetFN="NULL",
                           nmaxThreads=1000){
  
  params = list(L=L, 
                K=K, 
                maxnmm=maxnmm, 
                maxseqlen=maxseqlen,
                maxnumseq=maxnumseq, 
                useTgkm=useTgkm,
                alg=alg, 
                addRC=addRC, 
                usePseudocnt=usePseudocnt, 
                OutputBinary=FALSE, 
                posfile=normalizePath(posfile, mustWork = TRUE), 
                negfile=normalizePath(negfile, mustWork = TRUE),
                outfile=normalizePath(outfile, mustWork = FALSE),
                wildcardLambda=wildcardLambda, 
                wildcardMismatchM=wildcardMismatchM,
                alphabetFN=alphabetFN, 
                nmaxThreads=nmaxThreads
                ); 
 # print(params)
  
 invisible(.Call('gkmSVM_gkmsvm_kernel', PACKAGE = 'gkmSVM', params))
}
