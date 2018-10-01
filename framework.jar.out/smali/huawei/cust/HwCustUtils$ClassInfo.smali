.class Lhuawei/cust/HwCustUtils$ClassInfo;
.super Ljava/lang/Object;
.source "HwCustUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/cust/HwCustUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassInfo"
.end annotation


# instance fields
.field mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mCs:[Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field mOrgClsName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mOrgClsName:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    .line 251
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCs:[Ljava/lang/reflect/Constructor;

    .line 252
    return-void
.end method
