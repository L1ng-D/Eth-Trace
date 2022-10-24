package com.ling.common;

import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameterName;
import org.web3j.protocol.core.methods.response.EthGetBalance;
import org.web3j.protocol.core.methods.response.EthGetTransactionReceipt;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.protocol.ipc.WindowsIpcService;

import java.math.BigInteger;
import java.util.concurrent.ExecutionException;

public class EthTransfer {

    private static Web3j client = Web3j.build(new WindowsIpcService("\\\\.\\pipe\\geth.ipc"));

    /**
     * 获取账户余额
     * @param address
     * @return
     * @throws ExecutionException
     * @throws InterruptedException
     */
    public static BigInteger getBalance(String address) throws ExecutionException, InterruptedException {
        EthGetBalance ethGetBalance = client.ethGetBalance(address, DefaultBlockParameterName.fromString(DefaultBlockParameterName.LATEST.name()))
                        .sendAsync().get();
        //System.out.println(ethGetBalance.getBalance());
        return ethGetBalance.getBalance();
    }

    public static TransactionReceipt getTransactionReceipt(String transactionHash) throws ExecutionException, InterruptedException {
        EthGetTransactionReceipt ethGetTransactionReceipt = client.ethGetTransactionReceipt(transactionHash).sendAsync().get();
        TransactionReceipt transactionReceipt = ethGetTransactionReceipt.getTransactionReceipt().orElseThrow(RuntimeException::new);
        System.out.println(transactionReceipt);
        return  transactionReceipt;
    }





}
