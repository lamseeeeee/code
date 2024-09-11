using UnityEngine;

public class GunShootWithBullets : MonoBehaviour
{
    public GameObject bulletPrefab; // The bullet prefab
    public Transform bulletSpawn;   // Where the bullet will be spawned from
    public float bulletSpeed = 20f; // Speed of the bullet

    void Update()
    {
        if (Input.GetButtonDown("Fire1")) // Left-click to shoot
        {
            Shoot();
        }
    }

    void Shoot()
    {
        // Create a bullet instance
        GameObject bullet = Instantiate(bulletPrefab, bulletSpawn.position, bulletSpawn.rotation);

        // Get the Rigidbody component to add force
        Rigidbody rb = bullet.GetComponent<Rigidbody>();

        // Add forward force to the bullet
        rb.AddForce(bulletSpawn.forward * bulletSpeed, ForceMode.VelocityChange);
    }
}
