.class public interface abstract Lcom/xiaomi/scanner/IScannerInterface;
.super Ljava/lang/Object;
.source "IScannerInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/IScannerInterface$_Parcel;,
        Lcom/xiaomi/scanner/IScannerInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract detectImage()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
