package com.ling;

import com.ling.contract.Counter_sol_Counter;
import com.ling.contract.Counter_sol_cProduct;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.web3j.abi.datatypes.generated.Bytes32;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.response.EthAccounts;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.Web3ClientVersion;
import org.web3j.protocol.http.HttpService;
import org.web3j.utils.Numeric;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.concurrent.ExecutionException;

@SpringBootTest
class EthTraceApplicationTests {

    private Web3j web3j = Web3j.build(new HttpService("http://localhost:8545"));
    // 通过账户私钥，选择钱包账户
    private Credentials credentials = Credentials.create("a0b9db7483112c28fa3844a06ef889f125333b6ef554692ed8ca5643dd82410b");
    // 已部署合约地址
    final String CONTRACT_ADDRESS = "0xB44DbF8a6A1345d944EDE8117f1b247636BeF8fe";

    @Test
    public void productTest() throws IOException, ExecutionException, InterruptedException {
        // 设置gas相关参数
        BigInteger gasLimit = new BigInteger("4700000");
        BigInteger gasPrices = web3j.ethGasPrice().send().getGasPrice();

        Counter_sol_cProduct solCProduct = Counter_sol_cProduct
                .load(CONTRACT_ADDRESS, web3j, credentials, gasPrices, gasLimit);
        
        // 保存农产品

        Counter_sol_cProduct.Product product = solCProduct.get(BigInteger.valueOf(1)).sendAsync().get();

        if (product != null){
            System.out.println("product000.toString() = " + product.toString());
        }
            solCProduct.save(BigInteger.valueOf(1), new Counter_sol_cProduct.Product(
                    "苹果牛奶", BigInteger.valueOf(1), "猛牛公司", "area", BigInteger.valueOf(1), "aaaa.img"
            )).sendAsync().get();


        product = solCProduct.get(BigInteger.valueOf(1)).sendAsync().get();

        System.out.println("product.toString() = " + product.toString());

    }

    @Test
    public void testContract() throws Exception {
        // 设置gas相关参数
        BigInteger gasLimit = new BigInteger("4700000");
        BigInteger gasPrices = web3j.ethGasPrice().send().getGasPrice();

        // 调用合约方法
        Grade testContract = Grade.load(CONTRACT_ADDRESS,web3j,
                credentials,gasPrices,gasLimit);

        // 设置学号
        byte[] id = Numeric.hexStringToByteArray(asciiToHex("20273122"));

        System.out.println("transaction" + testContract.setGrade(id, BigInteger.valueOf(99)).sendAsync().get());
        System.out.println("grade = " + testContract.grades(id).sendAsync().get());

    }


    public String asciiToHex(String asciiValue)
    {
        char[] chars = asciiValue.toCharArray();
        StringBuffer hex = new StringBuffer();
        for (int i = 0; i < chars.length; i++)
        {
            hex.append(Integer.toHexString((int) chars[i]));
        }

        return hex.toString() + "".join("", Collections.nCopies(32 - (hex.length()/2), "00"));
    }

    public static String hexToASCII(String hexValue)
    {
        StringBuilder output = new StringBuilder("");
        for (int i = 0; i < hexValue.length(); i += 2)
        {
            String str = hexValue.substring(i, i + 2);
            output.append((char) Integer.parseInt(str, 16));
        }
        return output.toString();
    }

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









}
