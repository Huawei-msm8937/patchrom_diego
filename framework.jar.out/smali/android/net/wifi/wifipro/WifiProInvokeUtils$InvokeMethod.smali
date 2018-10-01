.class public interface abstract annotation Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;
.super Ljava/lang/Object;
.source "WifiProInvokeUtils.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;
        methodName = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/wifipro/WifiProInvokeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InvokeMethod"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract methodName()Ljava/lang/String;
.end method

.method public abstract methodObject()Ljava/lang/String;
.end method
