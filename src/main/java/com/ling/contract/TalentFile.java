package com.ling.contract;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.Utf8String;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteFunctionCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tuples.generated.Tuple5;
import org.web3j.tx.Contract;
import org.web3j.tx.TransactionManager;
import org.web3j.tx.gas.ContractGasProvider;

/**
 * <p>Auto generated code.
 * <p><strong>Do not modify!</strong>
 * <p>Please use the <a href="https://docs.web3j.io/command_line.html">web3j command line tools</a>,
 * or the org.web3j.codegen.SolidityFunctionWrapperGenerator in the 
 * <a href="https://github.com/web3j/web3j/tree/master/codegen">codegen module</a> to update.
 *
 * <p>Generated with web3j version 1.4.2.
 */
@SuppressWarnings("rawtypes")
public class TalentFile extends Contract {
    public static final String BINARY = "Bin file was not provided";

    public static final String FUNC_ADDRECORD = "addRecord";

    public static final String FUNC_DELETERECORD = "deleteRecord";

    public static final String FUNC_GETRECORD = "getRecord";

    public static final String FUNC_RECORDMANAGER = "recordManager";

    public static final String FUNC_UPDATERECORD = "updateRecord";

    @Deprecated
    protected TalentFile(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected TalentFile(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, credentials, contractGasProvider);
    }

    @Deprecated
    protected TalentFile(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    protected TalentFile(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public RemoteFunctionCall<TransactionReceipt> addRecord(String _name, BigInteger _age, String _education, String _skills, BigInteger _experience) {
        final Function function = new Function(
                FUNC_ADDRECORD, 
                Arrays.<Type>asList(new Utf8String(_name),
                new Uint256(_age),
                new Utf8String(_education),
                new Utf8String(_skills),
                new Uint256(_experience)),
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public RemoteFunctionCall<TransactionReceipt> deleteRecord() {
        final Function function = new Function(
                FUNC_DELETERECORD, 
                Arrays.<Type>asList(), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public RemoteFunctionCall<Tuple5<String, BigInteger, String, String, BigInteger>> getRecord() {
        final Function function = new Function(FUNC_GETRECORD, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Utf8String>() {}, new TypeReference<Uint256>() {}, new TypeReference<Utf8String>() {}, new TypeReference<Utf8String>() {}, new TypeReference<Uint256>() {}));
        return new RemoteFunctionCall<Tuple5<String, BigInteger, String, String, BigInteger>>(function,
                new Callable<Tuple5<String, BigInteger, String, String, BigInteger>>() {
                    @Override
                    public Tuple5<String, BigInteger, String, String, BigInteger> call() throws Exception {
                        List<Type> results = executeCallMultipleValueReturn(function);
                        return new Tuple5<String, BigInteger, String, String, BigInteger>(
                                (String) results.get(0).getValue(), 
                                (BigInteger) results.get(1).getValue(), 
                                (String) results.get(2).getValue(), 
                                (String) results.get(3).getValue(), 
                                (BigInteger) results.get(4).getValue());
                    }
                });
    }

    public RemoteFunctionCall<String> recordManager() {
        final Function function = new Function(FUNC_RECORDMANAGER, 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public RemoteFunctionCall<TransactionReceipt> updateRecord(String _name, BigInteger _age, String _education, String _skills, BigInteger _experience) {
        final Function function = new Function(
                FUNC_UPDATERECORD, 
                Arrays.<Type>asList(new Utf8String(_name),
                new Uint256(_age),
                new Utf8String(_education),
                new Utf8String(_skills),
                new Uint256(_experience)),
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    @Deprecated
    public static TalentFile load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new TalentFile(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static TalentFile load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new TalentFile(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public static TalentFile load(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return new TalentFile(contractAddress, web3j, credentials, contractGasProvider);
    }

    public static TalentFile load(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return new TalentFile(contractAddress, web3j, transactionManager, contractGasProvider);
    }
}
