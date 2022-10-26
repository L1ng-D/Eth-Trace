package com.ling;

import com.ling.contract.Counter_sol_Counter;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.response.EthAccounts;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.Web3ClientVersion;
import org.web3j.protocol.http.HttpService;

import java.math.BigInteger;
import java.util.concurrent.ExecutionException;

@SpringBootTest
class EthTraceApplicationTests {

    private Web3j web3j = Web3j.build(new HttpService("http://localhost:8545"));

    private Credentials credentials = Credentials.create("92a367fc89d62b4457bdbdd275f97bb0e51dcd3a895a2981591855e2cecd48cf"); // 账户私钥


    private BigInteger ethBase = BigInteger.valueOf(10).pow(18);   // 1 eth = 10^18 wei

    @Test
    public void getVersion() throws ExecutionException, InterruptedException {
        Web3ClientVersion version = web3j.web3ClientVersion().sendAsync().get();
//        System.out.println("version = " + version);
        System.out.println("version = " + version.getWeb3ClientVersion());
    }

    @Test
    public void getLatestBlockNumber() throws ExecutionException, InterruptedException {
        EthBlockNumber blockNumber = new EthBlockNumber();
        blockNumber = this.web3j.ethBlockNumber()
                .sendAsync()
                .get();
//        System.out.println("blockNumber = " + blockNumber);
        System.out.println("blockNumber = " + blockNumber.getBlockNumber());
    }

    @Test
    public void getEthAccounts() throws ExecutionException, InterruptedException {
        EthAccounts accounts = new EthAccounts();
        accounts = web3j.ethAccounts()
                .sendAsync()
                .get();
        System.out.println("accounts.getAccounts() = " + accounts.getAccounts());
    }

    @Test
    public void testContract() throws Exception {
        BigInteger gasLimit = new BigInteger("4700000");
        BigInteger gasPrices = web3j.ethGasPrice().send().getGasPrice();
        System.out.println(gasPrices);

//        System.out.println("address" + credentials.getAddress());

//        Counter_sol_Counter deployContract = Counter_sol_Counter.deploy(web3j, credentials, gasPrices, gasLimit).send();

        // 部署完成后打印合约地址
//        System.out.println(deployContract.getContractAddress());

        // 判断部署的合约是否可用
//        System.out.println(deployContract.isValid());

        // 调用合约方法
        Counter_sol_Counter testContract = Counter_sol_Counter.load("0xC0bf69F0d3dDc69238310D06aC134be95B5B8fE4",web3j,
                credentials,gasPrices,gasLimit);
        System.out.println("count1=>" + testContract.getCount().sendAsync().get().getValue());
        testContract.increment().send();
        System.out.println("count2=>" + testContract.getCount().send().getValue());

    }







}
