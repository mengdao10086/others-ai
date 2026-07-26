.class public Lmiuix/appcompat/app/DialogContract$ValueList;
.super Ljava/lang/Object;
.source "DialogContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/DialogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueList"
.end annotation


# instance fields
.field private final full:Landroid/util/TypedValue;

.field private final major:Landroid/util/TypedValue;

.field private final minor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)V
    .registers 4

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->minor:Landroid/util/TypedValue;

    .line 234
    iput-object p2, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->major:Landroid/util/TypedValue;

    .line 235
    iput-object p2, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->full:Landroid/util/TypedValue;

    return-void
.end method


# virtual methods
.method public getFull()Landroid/util/TypedValue;
    .registers 2

    .line 247
    iget-object v0, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->full:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMajor()Landroid/util/TypedValue;
    .registers 2

    .line 243
    iget-object v0, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->major:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinor()Landroid/util/TypedValue;
    .registers 2

    .line 239
    iget-object v0, p0, Lmiuix/appcompat/app/DialogContract$ValueList;->minor:Landroid/util/TypedValue;

    return-object v0
.end method
