using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutomehanicarskaRadnjaClassLibrary.DAO
{
    public abstract class BaseRepository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        public BaseRepository() { }

        public void Delete(object id)
        {
            using (var db = new AutomehanicarskaRadnjaContainer())
            {
                DbSet<TEntity> doSet = db.Set<TEntity>();
                TEntity entityToDelete = db.Set<TEntity>().Find(id);
                db.Entry(entityToDelete).State = EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public TEntity FindById(object id)
        {
            using (var db = new AutomehanicarskaRadnjaContainer())
            {
                return db.Set<TEntity>().Find(id);
            }
        }

        public List<TEntity> GetList()
        {
            using (var db = new AutomehanicarskaRadnjaContainer())
            {
                return db.Set<TEntity>().ToList();
            }
        }

        public void Insert(TEntity entity)
        {
            using (var db = new AutomehanicarskaRadnjaContainer())
            {
                db.Set<TEntity>().Add(entity);
                db.SaveChanges();
            }
        }

        public void Update(TEntity entityToUpdate)
        {
            using (var db = new AutomehanicarskaRadnjaContainer())
            {
                db.Set<TEntity>().Attach(entityToUpdate);
                db.Entry(entityToUpdate).State = EntityState.Modified;
                db.SaveChanges();
            }
        }
    }
}
