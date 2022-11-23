package com.ling.contract;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.DynamicStruct;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.Utf8String;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteFunctionCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tuples.generated.Tuple6;
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
public class Counter_sol_cProduct extends Contract {
    public static final String BINARY = "Bin file was not provided";

    public static final String FUNC_GET = "get";

    public static final String FUNC_PRODUCT = "product";

    public static final String FUNC_SAVE = "save";

    @Deprecated
    protected Counter_sol_cProduct(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected Counter_sol_cProduct(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, credentials, contractGasProvider);
    }

    @Deprecated
    protected Counter_sol_cProduct(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    protected Counter_sol_cProduct(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        super(BINARY, contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public RemoteFunctionCall<Product> get(BigInteger id) {
        final Function function = new Function(FUNC_GET, 
                Arrays.<Type>asList(new Uint256(id)),
                Arrays.<TypeReference<?>>asList(new TypeReference<Product>() {}));
        return executeRemoteCallSingleValueReturn(function, Product.class);
    }

    public RemoteFunctionCall<Tuple6<String, BigInteger, String, String, BigInteger, String>> product(BigInteger param0) {
        final Function function = new Function(FUNC_PRODUCT, 
                Arrays.<Type>asList(new Uint256(param0)),
                Arrays.<TypeReference<?>>asList(new TypeReference<Utf8String>() {}, new TypeReference<Uint256>() {}, new TypeReference<Utf8String>() {}, new TypeReference<Utf8String>() {}, new TypeReference<Uint256>() {}, new TypeReference<Utf8String>() {}));
        return new RemoteFunctionCall<Tuple6<String, BigInteger, String, String, BigInteger, String>>(function,
                new Callable<Tuple6<String, BigInteger, String, String, BigInteger, String>>() {
                    @Override
                    public Tuple6<String, BigInteger, String, String, BigInteger, String> call() throws Exception {
                        List<Type> results = executeCallMultipleValueReturn(function);
                        return new Tuple6<String, BigInteger, String, String, BigInteger, String>(
                                (String) results.get(0).getValue(), 
                                (BigInteger) results.get(1).getValue(), 
                                (String) results.get(2).getValue(), 
                                (String) results.get(3).getValue(), 
                                (BigInteger) results.get(4).getValue(), 
                                (String) results.get(5).getValue());
                    }
                });
    }

    public RemoteFunctionCall<TransactionReceipt> save(BigInteger id, Product _product) {
        final Function function = new Function(
                FUNC_SAVE, 
                Arrays.<Type>asList(new Uint256(id),
                _product), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    @Deprecated
    public static Counter_sol_cProduct load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new Counter_sol_cProduct(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    @Deprecated
    public static Counter_sol_cProduct load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new Counter_sol_cProduct(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public static Counter_sol_cProduct load(String contractAddress, Web3j web3j, Credentials credentials, ContractGasProvider contractGasProvider) {
        return new Counter_sol_cProduct(contractAddress, web3j, credentials, contractGasProvider);
    }

    public static Counter_sol_cProduct load(String contractAddress, Web3j web3j, TransactionManager transactionManager, ContractGasProvider contractGasProvider) {
        return new Counter_sol_cProduct(contractAddress, web3j, transactionManager, contractGasProvider);
    }

    public static class Product extends DynamicStruct {
        public String name;

        public BigInteger status;

        public String company;

        public String area;

        public BigInteger isPass;

        public String image;

        public Product(String name, BigInteger status, String company, String area, BigInteger isPass, String image) {
            super(new Utf8String(name),
                    new Uint256(status),
                    new Utf8String(company),
                    new Utf8String(area),
                    new Uint256(isPass),
                    new Utf8String(image));
            this.name = name;
            this.status = status;
            this.company = company;
            this.area = area;
            this.isPass = isPass;
            this.image = image;
        }

        public Product(Utf8String name, Uint256 status, Utf8String company, Utf8String area, Uint256 isPass, Utf8String image) {
            super(name, status, company, area, isPass, image);
            this.name = name.getValue();
            this.status = status.getValue();
            this.company = company.getValue();
            this.area = area.getValue();
            this.isPass = isPass.getValue();
            this.image = image.getValue();
        }

        @Override
        public String toString() {
            return "Product{" +
                    "name='" + name + '\'' +
                    ", status=" + status +
                    ", company='" + company + '\'' +
                    ", area='" + area + '\'' +
                    ", isPass=" + isPass +
                    ", image='" + image + '\'' +
                    '}';
        }
    }
}
