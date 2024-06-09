using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utf8StringWriter
/// </summary>
public sealed class Utf8StringWriter : StringWriter
{
    public override System.Text.Encoding Encoding { get { return System.Text.Encoding.UTF8; } }
}