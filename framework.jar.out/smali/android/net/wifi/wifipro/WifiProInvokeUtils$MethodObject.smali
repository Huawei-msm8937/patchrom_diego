.class public Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;
.super Ljava/lang/Object;
.source "WifiProInvokeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/wifipro/WifiProInvokeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field method:Ljava/lang/reflect/Method;

.field final synthetic this$0:Landroid/net/wifi/wifipro/WifiProInvokeUtils;


# direct methods
.method public constructor <init>(Landroid/net/wifi/wifipro/WifiProInvokeUtils;)V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;, "Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject<TT;>;"
    iput-object p1, p0, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;->this$0:Landroid/net/wifi/wifipro/WifiProInvokeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
