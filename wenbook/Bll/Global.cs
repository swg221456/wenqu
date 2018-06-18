using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace 问渠.Bll
{
   public enum OperationResult
    {
        /// <summary>
        /// 记录已存在
        /// </summary>
        exist,
        /// <summary>
        /// 成功
        /// </summary>
        success,
        /// <summary>
        /// 失败
        /// </summary>
        failure
    }
}