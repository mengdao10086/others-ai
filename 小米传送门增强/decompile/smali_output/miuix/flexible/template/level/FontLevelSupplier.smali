.class public Lmiuix/flexible/template/level/FontLevelSupplier;
.super Ljava/lang/Object;
.source "FontLevelSupplier.java"

# interfaces
.implements Lmiuix/flexible/template/level/LevelSupplier;


# static fields
.field public static final LEVEL_LARGE:I = 0x2

.field public static final LEVEL_NORMAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiuix/flexible/template/level/FontLevelSupplier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 3

    .line 19
    iget-object v0, p0, Lmiuix/flexible/template/level/FontLevelSupplier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x2

    :goto_b
    return v1
.end method
