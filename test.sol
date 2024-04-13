// SPDX-License-Identifier: MIT
pragma solidity =0.8.22;

import "./igrtb.sol";

contract TestIGRTB is igotruggedtokenbase {
    constructor() {
        // Set the initial state for testing
        marketingWallet = address(0x123);
        developmentWallet = address(0x456);
        liquidityWallet = address(0x789);
        operationsWallet = address(0xabc);
    }

    function setMarketingWallet(address _marketingWallet) external onlyOwner {
        // For testing purposes, allow changing the marketing wallet address
        emit marketingWalletUpdated(_marketingWallet, marketingWallet);
        marketingWallet = _marketingWallet;
    }

    function setDevelopmentWallet(address _developmentWallet) external onlyOwner {
        // For testing purposes, allow changing the development wallet address
        emit developmentWalletUpdated(_developmentWallet, developmentWallet);
        developmentWallet = _developmentWallet;
    }

    function setLiquidityWallet(address _liquidityWallet) external onlyOwner {
        // For testing purposes, allow changing the liquidity wallet address
        emit liquidityWalletUpdated(_liquidityWallet, liquidityWallet);
        liquidityWallet = _liquidityWallet;
    }

    function setOperationsWallet(address _operationsWallet) external onlyOwner {
        // For testing purposes, allow changing the operations wallet address
        emit operationsWalletUpdated(_operationsWallet, operationsWallet);
        operationsWallet = _operationsWallet;
    }

    function excludeFromFeesForTest(address account, bool excluded) external onlyOwner {
    // For testing purposes, allow excluding an account from fees
    emit ExcludeFromFees(account, excluded);
   
}

    function setMaxTransactionForTest(uint256 _maxTransaction) external onlyOwner {
        // For testing purposes, allow setting the max transaction amount
        maxTransaction = _maxTransaction;
    }

    function setMaxWalletForTest(uint256 _maxWallet) external onlyOwner {
        // For testing purposes, allow setting the max wallet amount
        maxWallet = _maxWallet;
    }

    function setLimitsInEffectForTest(bool _limitsInEffect) external onlyOwner {
        // For testing purposes, allow enabling/disabling limits
        limitsInEffect = _limitsInEffect;
    }

    function setTransferDelayEnabledForTest(bool _transferDelayEnabled) external onlyOwner {
        // For testing purposes, allow enabling/disabling transfer delay
        transferDelayEnabled = _transferDelayEnabled;
    }

    function setTradingActiveForTest(bool _tradingActive) external onlyOwner {
        // For testing purposes, allow enabling/disabling trading
        tradingActive = _tradingActive;
    }

    function setSwapEnabledForTest(bool _swapEnabled) external onlyOwner {
        // For testing purposes, allow enabling/disabling swapping
        swapEnabled = _swapEnabled;
    }
}
