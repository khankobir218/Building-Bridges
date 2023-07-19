const buildBridges = (): void => {
  const bridges: Array<string> = [];

  //  Code to build bridges
  const bridgeBuilder = (): void => {
    const material: string = 'Steel'; 
    let length: number = 500;
    const strength: number = 1000;
    let bridgeCounter: number = 0;
    
    for(let i = 0; i < 10; i++) { 
      bridgeCounter += 1; 
      bridges.push(`Bridge #${bridgeCounter} is ${length} feet long and made from ${material}. It has a strength rating of ${strength} tonnes.`);
      length += 500;
    }
  };

  bridgeBuilder();
  const bridgesComplete = `Completed Building Bridges:\n ${bridges.join('\n')}`;

  console.log(bridgesComplete);
};

buildBridges();