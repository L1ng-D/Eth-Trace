pragma solidity^0.8.17;
    contract cProduct{
    struct Product{//产品
       string name;//农产品名称
       uint status;
       string company;// 上传公司
       string area; //制作地区
       uint isPass;//是否审核通过
       string image;// 产品图片
   }


     mapping(uint=>Product) public product;  //农产品数组

     function save(uint id, Product memory _product) public {
        product[id] = _product;
     }

     function get(uint id) public view returns(Product memory){
        return product[id];
     }
   }