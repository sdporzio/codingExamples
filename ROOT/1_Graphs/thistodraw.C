void thistodraw(){

  int i, j, k, n;
  
  TH1D *countrate = new TH1D("countrate","Count Rate; N_{Counts}; # occurencies",15,-0.5,15.5);
  const double mean_count = 3.6;
  TRandom3 rndgen;
  
  //Simulate the measurements of a Geiger counter
  for(i=0;i<400;i++){
    countrate->Fill(rndgen.Poisson(mean_count));
  }

  gROOT->SetStyle("Plain");
  
  TCanvas *c1 = new TCanvas();
  countrate->Draw();
  
  TCanvas *c2 = new TCanvas();
  countrate->DrawNormalized();

  std::cout << " Moments of Distribution:" << endl;
  std::cout << "  - Mean: \t" << countrate->GetMean() << " +/- " << countrate->GetMeanError() << endl;
  std::cout << "  - RMS: \t" << countrate->GetRMS() << " +/- " << countrate->GetRMSError() << endl;
  std::cout << "  - Skewness: \t" << countrate->GetSkewness() << endl;
  std::cout << "  - Kurtosis: \t" << countrate->GetKurtosis() << endl;

}
